#pragma once
#include <algorithm>
#include <fstream>
#include <iostream>
#include <optional>
#include <sstream>
#include <stack>
#include <variant>
#include <vector>

#include "errors.h"

template <typename T>
struct nested_list : std::variant<std::vector<nested_list<T>>, T> {
    using std::variant<std::vector<nested_list<T>>, T>::variant;

    nested_list(std::initializer_list<nested_list> ilist)
        : std::variant<std::vector<nested_list<T>>, T>(std::in_place_index<0>,
                                                       ilist) {}

    // Get a pointer to the vector if this nested_list is a vector
    std::vector<nested_list<T>>* get_vector() {
        return std::get_if<std::vector<nested_list<T>>>(&*this);
    }

    // Check if this nested_list is a vector
    bool is_vector() {
        return std::holds_alternative<std::vector<nested_list<T>>>(*this);
    }

    // Add a new element to the end of the vector if this nested_list is a
    // vector, otherwise replace the current value with a vector containing the
    // current value and the new element
    void push_back(const nested_list<T>& new_element) {
        auto* vector_ptr = std::get_if<std::vector<nested_list<T>>>(&*this);
        if (vector_ptr) {
            vector_ptr->push_back(new_element);
        } else {
            std::vector<nested_list<T>> new_vector;
            new_vector.push_back(*this);
            new_vector.push_back(new_element);
            *this = new_vector;
        }
    }

    bool operator==(const nested_list<T>& other) const {
        // First check if the types are the same
        if (this->index() != other.index()) {
            return false;
        }

        if (std::holds_alternative<T>(*this)) {
            // If the variant holds a value of type T, compare the values
            // directly
            return std::get<T>(*this) == std::get<T>(other);
        } else {
            // If the variant holds a vector of nested_lists, recursively
            // compare the vectors
            auto* vector_ptr = std::get_if<std::vector<nested_list<T>>>(&*this);
            auto* other_vector_ptr =
                std::get_if<std::vector<nested_list<T>>>(&other);
            if (!vector_ptr || !other_vector_ptr ||
                vector_ptr->size() != other_vector_ptr->size()) {
                return false;
            }
            for (std::size_t i = 0; i < vector_ptr->size(); ++i) {
                if ((*vector_ptr)[i] != (*other_vector_ptr)[i]) {
                    return false;
                }
            }
            return true;
        }
    }
};

template <typename T>
class LispIterator {
   public:
    // Constructor taking a nested_list<T> as argument
    LispIterator(nested_list<T>& list) {
        if (list.is_vector()) {
            // If the nested_list is a vector, initialize the stack with the
            // vector and the index of the first element
            T tmp;
            stack_.push({list.get_vector(), std::optional<std::size_t>{0}});
        } else {
            // If the nested_list is a value, initialize the stack with a null
            // vector pointer and the value itself
            stack_.push({nullptr, std::optional<std::size_t>{}});
            value_ptr_ = std::get_if<1>(&list);
        }
    }

    T get_word() {
        if (stack_.top().first) {
            throw ParseError("not a word");
        } else {
            return *value_ptr_;
        }
    }

    // Return true if the iterator is not at the end of the list
    bool has_next() const { return !stack_.empty(); }

    // Get the next value in the list and advance the iterator
    T next() {
        if (!has_next()) {
            throw std::runtime_error(
                "Iterator has reached the end of the list");
        }

        // Get the top element on the stack
        auto [vector_ptr, index] = stack_.top();

        if (vector_ptr) {
            // If the element is a vector, push the next element onto the stack
            auto& vector = *vector_ptr;
            if (index && index.value() >= vector.size()) {
                stack_.pop();
                value_ptr_ = stack_.empty() ? nullptr
                             : stack_.top().first
                                 ? nullptr
                                 : std::get_if<1>(&stack_.top().first->at(
                                       stack_.top().second.value()));
                return next();
            } else {
                stack_.push({vector_ptr, index ? index.value() + 1 : 1});
                if (vector[index.value()].is_vector()) {
                    auto& next_vector = vector[index.value()].get_vector();
                    if (!next_vector.empty()) {
                        stack_.push(
                            {&next_vector, std::optional<std::size_t>{0}});
                    }
                }
                value_ptr_ = vector[index.value()];
                return *value_ptr_;
            }
        } else {
            // If the element is a value, pop it from the stack
            stack_.pop();
            value_ptr_ = stack_.empty() ? nullptr
                         : stack_.top().first
                             ? nullptr
                             : stack_.top()
                                   .first->at(stack_.top().second.value())
                                   .get_if<1>();
            return *value_ptr_;
        }
    }

   private:
    // Stack of nested_list vectors and values
    std::stack<std::pair<const std::vector<nested_list<T>>*,
                         std::optional<std::size_t>>>
        stack_;
    const T* value_ptr_;
};

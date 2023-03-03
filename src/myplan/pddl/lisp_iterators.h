#pragma once
#include <algorithm>
#include <fstream>
#include <iostream>
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
            stack_.push({list.get_vector(), &tmp});
        } else {
            // If the nested_list is a value, initialize the stack with a null
            // vector pointer and the value itself
            stack_.push({nullptr, std::get_if<1>(&list)});
        }
    }

    T get_word() {
        auto [vector_ptr, value_ptr] = stack_.top();
        if (vector_ptr) {
            throw ParseError("not a word");
        } else {
            return *value_ptr;
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
        auto [vector_ptr, value_ptr] = stack_.top();

        if (vector_ptr) {
            // If the element is a vector, push the next element onto the stack
            auto& vector = *vector_ptr;
            std::size_t& index = stack_.top().second;
            if (index < vector.size() - 1) {
                stack_.push({vector_ptr, index + 1});
            } else {
                stack_.pop();
            }
            return vector[index];
        } else {
            // If the element is a value, pop it from the stack
            stack_.pop();
            if (has_next()) {
                // If there are more elements on the stack, check if the top
                // element is a vector and advance it if necessary
                auto& [next_vector_ptr, next_value_ptr] = stack_.top();
                if (next_vector_ptr) {
                    auto& next_vector = *next_vector_ptr;
                    std::size_t& next_index = stack_.top().second;
                    if (next_index < next_vector.size() - 1) {
                        stack_.push({next_vector_ptr, next_index + 1});
                    }
                }
            }
            return *value_ptr;
        }
    }

   private:
    // Stack of nested_list vectors and values
    std::stack<std::pair<std::vector<nested_list<T>>*, const T*>> stack_;
};


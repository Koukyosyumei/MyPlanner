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

const std::string INVALID_STRING = "<INVALID>";

template <typename T>
struct nested_list : std::variant<std::vector<nested_list<T>>, T> {
    using std::variant<std::vector<nested_list<T>>, T>::variant;
    bool isnull=false;

    nested_list(bool isnull_) : isnull(isnull_) {}
    nested_list(std::initializer_list<nested_list> ilist)
        : std::variant<std::vector<nested_list<T>>, T>(std::in_place_index<0>,
                                                       ilist),
          isnull(false) {}

    // Get a pointer to the vector if this nested_list is a vector
    std::vector<nested_list<T>>* get_vector() {
        return std::get_if<std::vector<nested_list<T>>>(&*this);
    }

    const std::vector<nested_list<T>>* get_vector_const() const {
        return std::get_if<std::vector<nested_list<T>>>(&*this);
    }

    // Check if this nested_list is a vector
    bool is_vector() const {
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
std::ostream& operator<<(std::ostream& os, const nested_list<T>& lst) {
    if (auto* v = std::get_if<0>(&lst)) {
        os << '{';
        bool first = true;
        for (const auto& child : *v) {
            if (first)
                first = false;
            else
                os << ", ";
            os << child;
        }
        os << '}';
    } else if (auto* e = std::get_if<1>(&lst)) {
        os << *e;
    } else {
        os << "<valueless by exception>";
    }
    return os;
}

class LispIterator {
   public:
    int position;
    const nested_list<std::string> contents;
    // Constructor taking a nested_list<T> as argument
    LispIterator(const nested_list<std::string> contents_)
        : position(0), contents(contents_) {
    }

    bool is_word() const {
        return std::holds_alternative<std::string>(contents);
    }

    bool isnull() const { return contents.isnull; }

    bool is_structure() const { return contents.is_vector(); }

    bool empty() const {
        if (is_word()) {
            throw ParseError("cannot call empty on word");
        }
        return peek().isnull();
    }

    std::string get_word() const {
        if (is_structure()) {
            throw ParseError("not a word");
        }
        return std::get<std::string>(contents);
    }

    const LispIterator peek() const {
        if (is_word()) {
            throw ParseError("not a structure");
        }
        auto* vec = contents.get_vector_const();
        if (position == vec->size()) {
            return LispIterator(nested_list<std::string>(true));
        }
        return LispIterator(vec->at(position));
    }

    LispIterator next() {
        const LispIterator result = peek();
        if (result.isnull()) {
            throw runtime_error("already at end");
        } else {
            position++;
        }
        LispIterator nonconst_result = result;
        return nonconst_result;
    }

    LispIterator operator++() { return next(); }

    bool try_match(const std::string& word) {
        LispIterator next = peek();
        if (!next.isnull() && next.is_word() && next.get_word() == word) {
            position++;
            return true;
        }
        return false;
    }

    void match(const std::string& word) {
        if (!try_match(word)) {
            throw ParseError("cannot find the expected word");
        }
    }

    void match_end() {
        if (!peek().isnull()) {
            throw ParseError("expected to be at end");
        }
    }

    const std::string peek_tag() const {
        const LispIterator item = peek();
        if (!item.isnull() && item.is_structure()) {
            const LispIterator subitem = item.peek();
            if (!subitem.isnull() && subitem.is_word()) {
                return subitem.get_word();
            }
        }
        return INVALID_STRING;
    }
};


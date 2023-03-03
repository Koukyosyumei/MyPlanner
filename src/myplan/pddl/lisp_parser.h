#pragma once
#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <variant>
#include <vector>
//#include "lisp_iterators.h"
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

std::string replace_str(std::string str, std::string from, std::string to) {
    size_t start_pos = str.find(from);
    if (start_pos == string::npos) return str;
    str.replace(start_pos, from.length(), to);
    return str;
}

std::vector<std::string> _tokenize(std::vector<std::string> input) {
    std::vector<std::string> tokens;
    for (std::string line : input) {
        // Strip comments.
        line = line.substr(0, line.find(';'));

        // Replace parentheses and question marks with spaces.
        line = replace_str(line, "(", " ( ");
        line = replace_str(line, ")", " ) ");
        line = replace_str(line, "?", " ?");

        std::istringstream iss(line);
        std::string token;
        while (iss >> token) {
            std::transform(token.begin(), token.end(), token.begin(),
                           ::tolower);
            tokens.push_back(token);
        }
    }
    return tokens;
}

nested_list<std::string> _parse_list_aux(
    std::vector<std::string>::iterator& beg,
    const std::vector<std::string>::iterator& end) {
    nested_list<std::string> result;
    for (std::vector<std::string>::iterator& it = beg; it != end; ++it) {
        const std::string& token = *it;
        if (token == ")") {
            return result;
        } else if (token == "(") {
            ++it;
            result.push_back(_parse_list_aux(it, end));
        } else {
            result.push_back(token);
        }
    }
    throw ParseError("Missing closing parenthesis");
}

nested_list<std::string> parse_nested_list(std::vector<std::string> input) {
    std::vector<std::string> tokens = _tokenize(input);
    if (tokens.empty() || tokens[0] != "(") {
        throw ParseError("Expected '(', got " +
                         (tokens.empty() ? "nothing" : tokens[0]));
    }
    std::vector<std::string>::iterator it = tokens.begin() + 1;
    nested_list<std::string> result = _parse_list_aux(it, tokens.end());
    return result;
}

// LispIterator parse_lisp_iterator(std::vector<std::string> input){
//     return LispIterator(parse_nested_list(input));
// }

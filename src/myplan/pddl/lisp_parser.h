#pragma once
#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <variant>
#include <vector>

#include "errors.h"
#include "lisp_iterators.h"

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

LispIterator<std::string> parse_lisp_iterator(std::vector<std::string> input) {
    nested_list<std::string> nlist = parse_nested_list(input);
    return LispIterator<std::string>(nlist);
}

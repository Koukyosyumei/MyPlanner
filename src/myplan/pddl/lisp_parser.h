#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

#include <lisp_iterators.h>
#include <errors.h>
using namespace std;

std::vector<std::string> _tokenize(std::istream& input_file) {
    std::vector<std::string> tokens;
    std::string line;
    while (std::getline(input_file, line)) {
        // Strip comments.
        line = line.substr(0, line.find(';'));

        // Replace parentheses and question marks with spaces.
        std::replace(line.begin(), line.end(), '(', ' ');
        std::replace(line.begin(), line.end(), ')', ' ');
        std::replace(line.begin(), line.end(), '?', ' ');

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

std::vector<std::string> _parse_list_aux(
    std::vector<std::string>::iterator& it,
    const std::vector<std::string>::iterator& end) {
    std::vector<std::string> result;
    while (it != end) {
        const std::string& token = *it;
        ++it;
        if (token == ")") {
            return result;
        } else if (token == "(") {
            std::vector<std::string> tmp = _parse_list_aux(it, end);
            result.insert(result.end(), tmp.begin(), tmp.end());
        } else {
            result.push_back(token);
        }
    }
    throw ParseError("Missing closing parenthesis");
}

std::vector<std::string> parse_nested_list(std::istream& input_file) {
    std::vector<std::string> tokens = _tokenize(input_file);
    if (tokens.empty() || tokens[0] != "(") {
        throw ParseError("Expected '(', got " +
                         (tokens.empty() ? "nothing" : tokens[0]));
    }
    std::vector<std::string>::iterator it = tokens.begin() + 1;
    std::vector<std::string> result = _parse_list_aux(it, tokens.end());
    if (it != tokens.end()) {
        throw ParseError("Unexpected token: " + *it);
    }
    return result;
}

LispIterator parse_lisp_iterator(std::istream& input_file){
    return LispIterator(parse_lisp_iterator(input_file));
}

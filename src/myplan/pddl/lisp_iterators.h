#pragma once
#include <iostream>
#include <string>
#include <variant>
#include <vector>

#include "errors.h"

class LispIterator {
   private:
    int position;
    std::variant<std::string, std::vector<LispIterator>> contents;

    void _raise_if(bool condition, const char* msg) {
        if (condition) {
            throw ParseError(msg);
        }
    }

   public:
    LispIterator(std::string contents) : position(0), contents(contents) {}
    LispIterator(std::vector<LispIterator> contents)
        : position(0), contents(contents) {}

    bool is_word() { return std::holds_alternative<std::string>(contents); }

    bool is_structure() {
        return std::holds_alternative<std::vector<LispIterator>>(contents);
    }

    bool empty() {
        _raise_if(is_word(), "cannot call empty on word");
        return peek() == nullptr;
    }

    std::string get_word() {
        _raise_if(is_structure(), "not a word");
        return std::get<std::string>(contents);
    }

    LispIterator* peek() {
        _raise_if(is_word(), "not a structure");
        if (position == std::get<std::vector<LispIterator>>(contents).size()) {
            return nullptr;
        }
        return &std::get<std::vector<LispIterator>>(contents)[position];
    }

    LispIterator* begin() {
        _raise_if(is_word(), "not a structure");
        return &std::get<std::vector<LispIterator>>(contents)[0];
    }

    LispIterator* end() {
        _raise_if(is_word(), "not a structure");
        return &std::get<std::vector<LispIterator>>(contents).back() + 1;
    }

    std::vector<LispIterator>::iterator iterator() {
        _raise_if(is_word(), "not a structure");
        return std::get<std::vector<LispIterator>>(contents).begin() + position;
    }

    LispIterator& operator++() {
        if (peek() == nullptr) {
            throw ParseError("already at end");
        }
        ++position;
        return *this;
    }

    LispIterator* next() {
        _raise_if(empty(), "already at end");
        operator++();
        return this;
    }

    bool try_match(std::string word) {
        auto peeked = peek();
        if (peeked && peeked->is_word() && peeked->get_word() == word) {
            next();
            return true;
        } else {
            return false;
        }
    }

    void match(std::string word) {
        _raise_if(!try_match(word), ("expected " + word).c_str());
    }

    void match_end() { _raise_if(peek() != nullptr, "expected to be at end"); }

    std::string peek_tag() {
        auto item = peek();
        if (item && item->is_structure()) {
            auto subitem = item->peek();
            if (subitem && subitem->is_word()) {
                return subitem->get_word();
            }
        }
        return nullptr;
    }
};


#include <iostream>
#include <string>
#include <variant>
#include <vector>

#include "errors.h"
using namespace std;

class LispIterator {
   public:
    // Constructor
    LispIterator(
        const std::variant<std::string, std::vector<LispIterator>>& contents)
        : position_{0}, contents_{contents} {}

    // Low-level interface
    bool is_word() const {
        return std::holds_alternative<std::string>(contents_);
    }

    bool is_structure() const {
        return std::holds_alternative<std::vector<LispIterator>>(contents_);
    }

    bool empty() const {
        _raise_if(is_word(), "cannot call empty on word");
        return peek() == nullptr;
    }

    std::string get_word() const {
        _raise_if(is_structure(), "not a word");
        return std::get<std::string>(contents_);
    }

    std::unique_ptr<LispIterator> peek() const {
        _raise_if(is_word(), "not a structure");
        if (position_ ==
            std::get<std::vector<LispIterator>>(contents_).size()) {
            return nullptr;
        }
        return std::make_unique<LispIterator>(
            std::get<std::vector<LispIterator>>(contents_)[position_]);
    }

    // Iterator interface
    using iterator_category = std::input_iterator_tag;
    using value_type = LispIterator;
    using difference_type = std::ptrdiff_t;
    using pointer = LispIterator*;
    using reference = LispIterator&;

    LispIterator& operator++() {
        if (peek() == nullptr) {
            throw ParseError("already at end");
        }
        ++position_;
        return *this;
    }

    LispIterator operator++(int) {
        LispIterator tmp(*this);
        operator++();
        return tmp;
    }

    LispIterator& operator*() { return *this; }

    std::unique_ptr<LispIterator> operator->() {
        return std::make_unique<LispIterator>(*this);
    }

    bool operator==(const LispIterator& other) const {
        return position_ == other.position_ && contents_ == other.contents_;
    }

    bool operator!=(const LispIterator& other) const {
        return !operator==(other);
    }

    // High-level interface
    void next() {
        _raise_if(empty(), "already at end");
        operator++();
    }

    bool try_match(const std::string& word) {
        auto peeked = peek();
        if (peeked && peeked->is_word() && peeked->get_word() == word) {
            next();
            return true;
        } else {
            return false;
        }
    }

    void match(const std::string& word) {
        _raise_if(!try_match(word), "expected " + word);
    }

    void match_end() { _raise_if(peek() != nullptr, "expected to be at end"); }

    std::optional<std::string> peek_tag() {
        auto item = peek();
        if (item && item->is_structure()) {
            auto subitem = item->peek();
            if (subitem && subitem->is_word()) {
                return subitem->get_word();
            }
        }
        return std::nullopt;
    }

   private:
    void _raise_if(bool condition, const std::string& msg) {
        if (condition) {
            throw ParseError(msg);
        }
    }
};

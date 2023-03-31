#pragma once
#include <functional>
#include <iostream>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

#include "settrie.h"

using namespace std;

class Operator {
   public:
    string name;
    set<string> preconditions;
    set<string> add_effects;
    set<string> del_effects;

    Operator(string name, vector<string>& preconditions,
             vector<string>& add_effects, vector<string>& del_effects) {
        this->name = name;
        this->preconditions =
            set<string>(preconditions.begin(), preconditions.end());
        this->add_effects = set<string>(add_effects.begin(), add_effects.end());
        this->del_effects = set<string>(del_effects.begin(), del_effects.end());
    }

    bool applicable(const unordered_set<string>& state) {
        for (string p : preconditions) {
            if (state.find(p) == state.end()) {
                return false;
            }
        }
        return true;
    }

    unordered_set<string> apply(const unordered_set<string>& state) {
        // assert(applicable(state));
        unordered_set<string> new_state = state;
        for (const string& fact : del_effects) {
            new_state.erase(fact);
        }
        for (const string& fact : add_effects) {
            new_state.insert(fact);
        }
        return new_state;
    }

    bool operator==(const Operator& other) const {
        return (name == other.name) && (preconditions == other.preconditions) &&
               (add_effects == other.add_effects) &&
               (del_effects == other.del_effects);
    }

    string str() const {
        string s = name + "\n";
        vector<pair<string, set<string>>> tmp_vec = {
            make_pair("PRE", preconditions), make_pair("ADD", add_effects),
            make_pair("DEL", del_effects)};
        for (auto tmp : tmp_vec) {
            string group = tmp.first;
            set<string> facts = tmp.second;
            for (const string& fact : facts) {
                s += "  " + group + ": " + fact + "\n";
            }
        }
        return s;
    }

    string repr() const { return "<Op " + name + ">"; }
};

class EncodedOperator {
   public:
    int name;
    set<int> preconditions;
    set<int> add_effects;
    set<int> del_effects;

    EncodedOperator(int name, vector<int>& preconditions,
                    vector<int>& add_effects, vector<int>& del_effects) {
        this->name = name;
        this->preconditions =
            set<int>(preconditions.begin(), preconditions.end());
        this->add_effects = set<int>(add_effects.begin(), add_effects.end());
        this->del_effects = set<int>(del_effects.begin(), del_effects.end());
    }

    EncodedOperator(const Operator& op,
                    std::unordered_map<std::string, int>& encoding_map) {
        this->name = encoding_map[op.name];
        for (std::string s : op.preconditions) {
            preconditions.emplace(encoding_map[s]);
        }
        for (std::string s : op.add_effects) {
            add_effects.emplace(encoding_map[s]);
        }
        for (std::string s : op.del_effects) {
            del_effects.emplace(encoding_map[s]);
        }
    }

    bool applicable(const unordered_set<int>& state) {
        for (int p : preconditions) {
            if (state.find(p) == state.end()) {
                return false;
            }
        }
        return true;
    }

    unordered_set<int> apply(const unordered_set<int>& state) {
        // assert(applicable(state));
        unordered_set<int> new_state = state;
        for (const int& fact : del_effects) {
            new_state.erase(fact);
        }
        for (const int& fact : add_effects) {
            new_state.insert(fact);
        }
        return new_state;
    }

    bool operator==(const EncodedOperator& other) const {
        return (name == other.name) && (preconditions == other.preconditions) &&
               (add_effects == other.add_effects) &&
               (del_effects == other.del_effects);
    }
};

namespace std {
template <>
struct hash<std::unordered_set<std::string>> {
    size_t operator()(const std::unordered_set<std::string>& us) const {
        size_t seed = 0;
        for (std::string s : us) {
            auto hash_v = hash<std::string>()(s);
            seed ^= hash_v + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        }
        return seed;
    }
};

template <>
struct hash<Operator> {
    size_t operator()(const Operator& op) const {
        size_t seed = 0;
        auto hash_1 = hash<std::string>()(op.name);
        seed ^= hash_1 + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<std::unordered_set<int>> {
    size_t operator()(const std::unordered_set<int>& us) const {
        size_t seed = 0;
        for (int s : us) {
            auto hash_v = hash<int>()(s);
            seed ^= hash_v + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        }
        return seed;
    }
};

template <>
struct hash<EncodedOperator> {
    size_t operator()(const EncodedOperator& op) const {
        return hash<int>()(op.name);
    }
};
}  // namespace std

class BaseTask {
   public:
    std::string name;
    std::unordered_set<int> facts;
    std::unordered_set<int> initial_state;
    std::unordered_set<int> goals;
    std::vector<EncodedOperator> operators;
    std::unordered_map<std::string, int> encoding_map;
    std::unordered_map<int, std::string> reverse_encoding_map;
    std::unordered_map<int, std::string> action_id2name;

    virtual bool goal_reached(std::unordered_set<int>& state) = 0;
    virtual std::vector<std::pair<int, std::unordered_set<int>>>
    get_successor_states(std::unordered_set<int>& state) = 0;
};

class Task : public BaseTask {
    /*
    A STRIPS planning task
    */
   public:
    SetTrie<int, EncodedOperator*> settrie;

    Task() {}
    Task(std::string name, std::unordered_set<int>& facts,
         std::unordered_set<int>& initial_state, std::unordered_set<int>& goals,
         std::vector<EncodedOperator> operators)
        : settrie(SetTrie<int, EncodedOperator*>()) {
        this->name = name;
        this->facts = facts;
        this->initial_state = initial_state;
        this->goals = goals;
        this->operators = operators;
        initialize_settrie();
    }

    void initialize_settrie() {
        for (EncodedOperator& op : operators) {
            settrie.assign(op.preconditions, &op);
        }
    }

    bool goal_reached(std::unordered_set<int>& state) override {
        /*
        The goal has been reached if all facts that are true in "goals"
        are true in "state".
        @return True if all the goals are reached, False otherwise
        */
        for (int g : goals) {
            if (state.find(g) == state.end()) {
                return false;
            }
        }
        return true;
        // return state == goals;
    }

    std::vector<std::pair<int, std::unordered_set<int>>> get_successor_states(
        std::unordered_set<int>& state) override {
        /*
        @return A vector with (op, new_state) pairs where "op" is the applicable
        operator and "new_state" the state that results when "op" is applied
        in state "state".
        */
        std::set<int> sorted_state(state.begin(), state.end());
        std::vector<EncodedOperator*> applicable_operators =
            settrie.subsets(sorted_state);
        std::vector<std::pair<int, std::unordered_set<int>>> successors;
        successors.reserve(applicable_operators.size());
        for (EncodedOperator* op : applicable_operators) {
            successors.push_back(make_pair(op->name, op->apply(state)));
        }

        return successors;
    }
};

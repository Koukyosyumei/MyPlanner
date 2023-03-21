#pragma once
#include <functional>
#include <iostream>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

using namespace std;

class Operator {
   public:
    string name;
    set<string> preconditions;
    set<string> add_effects;
    set<string> del_effects;

    Operator(string name, vector<string> preconditions,
             vector<string> add_effects, vector<string> del_effects) {
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

    // size_t operator()(const Operator& op) const {
    //     return hash<string>()(op.name) ^
    //            hash<unordered_set<string>>()(op.preconditions) ^
    //            hash<unordered_set<string>>()(op.add_effects) ^
    //            hash<unordered_set<string>>()(op.del_effects);
    // }

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
        // auto hash_2 = hash<std::set<std::string>>()(op.preconditions);
        // auto hash_3 = hash<std::set<std::string>>()(op.add_effects);
        // auto hash_4 = hash<std::set<std::string>>()(op.del_effects);

        seed ^= hash_1 + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        // seed ^= hash_2 + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        // seed ^= hash_3 + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        // seed ^= hash_4 + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};
}  // namespace std

class BaseTask {
   public:
    std::string name;
    std::unordered_set<std::string> facts;
    std::unordered_set<std::string> initial_state;
    std::unordered_set<std::string> goals;
    std::vector<Operator> operators;

    virtual bool goal_reached(std::unordered_set<std::string>& state) = 0;
    virtual std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
    get_successor_states(std::unordered_set<std::string>& state) = 0;
};

class Task : public BaseTask {
    /*
    A STRIPS planning task
    */
   public:
    Task() {}
    Task(std::string name, std::unordered_set<std::string> facts,
         std::unordered_set<std::string> initial_state,
         std::unordered_set<std::string> goals,
         std::vector<Operator> operators) {
        this->name = name;
        this->facts = facts;
        this->initial_state = initial_state;
        this->goals = goals;
        this->operators = operators;
    }

    bool goal_reached(std::unordered_set<std::string>& state) override {
        /*
        The goal has been reached if all facts that are true in "goals"
        are true in "state".
        @return True if all the goals are reached, False otherwise
        */
        for (std::string g : goals) {
            if (state.find(g) == state.end()) {
                return false;
            }
        }
        return true;
    }

    std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
    get_successor_states(std::unordered_set<std::string>& state) override {
        /*
        @return A vector with (op, new_state) pairs where "op" is the applicable
        operator and "new_state" the state that results when "op" is applied
        in state "state".
        */
        std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
            successors;
        for (Operator& op : operators) {
            if (op.applicable(state)) {
                successors.push_back(std::make_pair(&op, op.apply(state)));
            }
        }
        return successors;
    }

    std::string str() {
        std::string ops_str = "";
        for (Operator op : operators) {
            ops_str += op.repr() + "\n";
        }
        std::string s = "Task " + name + "\n Vars: ";
        for (std::string f : facts) {
            s += f + " ";
        }
        s += "\n Init: ";
        for (std::string i : initial_state) {
            s += i + " ";
        }
        s += "\n Goals: ";
        for (std::string g : goals) {
            s += g + " ";
        }
        s += "\n Ops: ";
        s += ops_str;
        return s;
    }
};

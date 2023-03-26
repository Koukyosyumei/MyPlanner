#pragma once
#include <any>
#include <functional>
#include <memory>
#include <queue>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

#include "../task.h"
#include "searchspace.h"

namespace std {
template <>
struct hash<std::set<std::string>> {
    size_t operator()(const std::set<std::string>& hoge) const {
        size_t seed = 0;
        for (std::string s : hoge) {
            auto n_hash = hash<std::string>()(s);
            seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        }
        return seed;
    }
};
};  // namespace std

struct hash_unordered_set {
    size_t operator()(const std::unordered_set<std::string>& s) const {
        size_t result = 0;
        for (const auto& str : s) {
            result ^= std::hash<std::string>{}(str);
        }
        return result;
    }
};

inline std::vector<std::string> breadth_first_search(BaseTask& planning_task) {
    int iteration = 0;
    std::queue<int> queue;
    std::vector<SearchNode> nodes;
    nodes.push_back(make_root_node(planning_task.initial_state));
    queue.push(0);

    std::unordered_set<std::unordered_set<std::string>, hash_unordered_set>
        closed = {planning_task.initial_state};
    std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
        successors;
    while (!queue.empty()) {
        ++iteration;

        int node_idx = queue.front();

        queue.pop();

        if (planning_task.goal_reached(nodes[node_idx].state)) {
            std::cout << iteration << " Nodes expanded" << std::endl;
            return extract_solution(node_idx, nodes);
        }
        successors = planning_task.get_successor_states(nodes[node_idx].state);
        for (auto& opss : successors) {
            if (closed.find(opss.second) == closed.end()) {
                nodes.emplace_back(make_child_node(node_idx, nodes[node_idx].g,
                                                   opss.first->name,
                                                   opss.second));
                queue.push(nodes.size() - 1);
                closed.emplace(opss.second);
            }
        }
    }

    std::cout << iteration << " Nodes expanded" << std::endl;
    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

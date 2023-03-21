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

inline std::vector<std::string> breadth_first_search(BaseTask& planning_task) {
    int iteration = 0;
    std::queue<int> queue;
    std::vector<SearchNode> nodes;
    // SearchNode root_node = make_root_node(planning_task.initial_state);
    nodes.push_back(make_root_node(planning_task.initial_state));
    queue.push(0);

    std::set<std::string> initial_state_set(planning_task.initial_state.begin(),
                                            planning_task.initial_state.end());
    std::unordered_set<std::set<std::string>> closed = {initial_state_set};
    while (!queue.empty()) {
        ++iteration;

        int node_idx = queue.front();

        queue.pop();

        if (planning_task.goal_reached(nodes[node_idx].state)) {
            // std::vector<std::string> solution;
            std::cout << iteration << " Nodes expanded" << std::endl;
            return extract_solution(node_idx, nodes);
            // return solution;
            //
        }
        std::vector<std::pair<Operator, std::unordered_set<std::string>>>
            successors =
                planning_task.get_successor_states(nodes[node_idx].state);
        for (auto& opss : successors) {
            std::set<std::string> successor_state(opss.second.begin(),
                                                  opss.second.end());
            if (closed.find(successor_state) == closed.end()) {
                nodes.push_back(make_child_node(node_idx, nodes[node_idx].g,
                                                opss.first.name, opss.second));
                queue.push(nodes.size() - 1);
                closed.insert(successor_state);
            }
        }
    }

    std::cout << iteration << " Nodes expanded" << std::endl;
    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

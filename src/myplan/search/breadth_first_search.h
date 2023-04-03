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

inline std::vector<int> breadth_first_search(BaseTask& planning_task) {
    int iteration = 0;
    std::queue<int> queue;
    std::vector<SearchNode> nodes;
    nodes.push_back(make_root_node(planning_task.initial_state));
    queue.push(0);

    flat_hash_set<size_t> closed = {nodes[0].hash_value};
    std::vector<std::pair<int, pair<size_t, flat_hash_set<int>>>> successors;
    int node_idx;
    while (!queue.empty()) {
        ++iteration;

        node_idx = queue.front();

        queue.pop();

        if (planning_task.goal_reached(nodes[node_idx].state)) {
            std::cout << iteration << " Nodes expanded" << std::endl;
            std::cout << closed.size() << " States within Closed List"
                      << std::endl;
            return extract_solution(node_idx, nodes);
        }
        successors.clear();
        planning_task.get_successor_states(nodes[node_idx].state, successors,
                                           nodes[node_idx].hash_value);
        for (auto& opss : successors) {
            if (closed.find(opss.second.first) == closed.end()) {
                nodes.emplace_back(
                    make_child_node(node_idx, nodes[node_idx].g, opss.first,
                                    opss.second.second, opss.second.first));
                queue.push(nodes.size() - 1);
                closed.emplace(opss.second.first);
            }
        }
    }

    std::cout << iteration << " Nodes expanded" << std::endl;
    std::cerr << "No solution found" << std::endl;
    return {};
}

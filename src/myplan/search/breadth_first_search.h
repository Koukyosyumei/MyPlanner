#pragma once
#include <queue>
#include <string>
#include <unordered_set>
#include <vector>

#include "../task.h"
#include "searchspace.h"

inline std::vector<std::string> breadth_first_search(BaseTask& planning_task) {
    int iteration = 0;
    std::queue<int> queue;
    std::vector<SearchNode> nodes;
    // SearchNode root_node = make_root_node(planning_task.initial_state);
    nodes.push_back(make_root_node(planning_task.initial_state));
    queue.push(0);

    std::unordered_set<std::unordered_set<std::string>> closed = {
        planning_task.initial_state};
    while (!queue.empty()) {
        ++iteration;

        int node_idx = queue.front();

        queue.pop();

        if (planning_task.goal_reached(nodes[node_idx].state)) {
            // std::vector<std::string> solution;
            return extract_solution(node_idx, nodes);
            // return solution;
            //
        }
        std::vector<std::pair<Operator, std::unordered_set<std::string>>>
            successors =
                planning_task.get_successor_states(nodes[node_idx].state);
        for (auto opss : successors) {
            Operator op = opss.first;
            std::unordered_set<std::string> successor_state = opss.second;
            // for (std::string ss : successor_state) {
            if (closed.find(successor_state) == closed.end()) {
                nodes.push_back(make_child_node(node_idx, nodes[node_idx].g,
                                                op.name, successor_state));
                queue.push(nodes.size() - 1);
                closed.insert(successor_state);
            }
            //}
        }
    }

    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

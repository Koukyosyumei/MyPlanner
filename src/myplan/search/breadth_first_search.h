#pragma once
#include <queue>
#include <string>
#include <unordered_set>
#include <vector>

#include "../task.h"
#include "searchspace.h"

inline std::vector<std::string> breadth_first_search(Task& planning_task) {
    int iteration = 0;
    std::queue<SearchNode> queue;
    std::string initial_state;
    for (std::string is : planning_task.initial_state) {
        initial_state = is;
    }
    queue.push(make_root_node(initial_state));

    std::unordered_set<std::string> closed = planning_task.initial_state;
    while (!queue.empty()) {
        ++iteration;

        auto node = queue.front();
        queue.pop();

        if (planning_task.goal_reached({node.state})) {
            return node.extract_solution();
        }

        for (std::pair<Operator, std::unordered_set<std::string>>& opss :
             planning_task.get_successor_states({node.state})) {
            Operator op = opss.first;
            std::unordered_set<std::string> successor_state = opss.second;
            for (std::string ss : successor_state) {
                if (closed.find(ss) == closed.end()) {
                    queue.push(make_child_node(&node, op.name, ss));
                    closed.insert(ss);
                }
            }
        }
    }

    return {};  // No solution found
}

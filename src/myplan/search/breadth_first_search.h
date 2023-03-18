#pragma once
#include <queue>
#include <string>
#include <unordered_set>
#include <vector>

#include "../task.h"
#include "searchspace.h"

inline std::vector<std::string> breadth_first_search(BaseTask& planning_task) {
    int iteration = 0;
    std::queue<SearchNode> queue;
    std::string initial_state;
    std::cout << "size of initial_state is "
              << planning_task.initial_state.size() << std::endl;
    for (std::string is : planning_task.initial_state) {
        std::cout << "is: " << is << std::endl;
        initial_state = is;
    }
    std::vector<SearchNode> nodes;
    SearchNode root_node = make_root_node(initial_state);
    queue.push(root_node);

    std::unordered_set<std::string> closed = {initial_state};
    while (!queue.empty()) {
        ++iteration;

        SearchNode& node = queue.front();
        queue.pop();

        if (planning_task.goal_reached({node.state})) {
            return node.extract_solution();
        }
        std::cout << "Iterate children" << std::endl;
        for (auto opss : planning_task.get_successor_states({node.state})) {
            Operator op = opss.first;
            std::unordered_set<std::string> successor_state = opss.second;
            for (std::string ss : successor_state) {
                if (closed.find(ss) == closed.end()) {
                    std::cout << "Insert child" << std::endl;
                    nodes.push_back(make_child_node(&node, op.name, ss));
                    queue.push(nodes[nodes.size() - 1]);
                    closed.insert(ss);
                } else {
                    std::cout << "Skip" << std::endl;
                }
            }
        }
    }

    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

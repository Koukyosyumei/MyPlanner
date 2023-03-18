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
    std::vector<SearchNode> nodes;
    SearchNode root_node = make_root_node(planning_task.initial_state);
    queue.push(root_node);

    std::cout << "the state of root node is: ";
    for (std::string s : root_node.state) {
        std::cout << s << " ";
    }
    std::cout << std::endl;

    std::unordered_set<std::unordered_set<std::string>> closed = {
        planning_task.initial_state};
    SearchNode node;
    while (!queue.empty()) {
        ++iteration;

        node = queue.front();

        std::cout << "1 the state of node is: ";
        for (std::string s : node.state) {
            std::cout << s << " ";
        }
        std::cout << std::endl;

        queue.pop();

        std::cout << "2 the state of node is: ";
        for (std::string s : node.state) {
            std::cout << s << " ";
        }
        std::cout << std::endl;

        if (planning_task.goal_reached(node.state)) {
            return node.extract_solution();
        }
        std::cout << "Iterate children" << std::endl;
        std::vector<std::pair<Operator, std::unordered_set<std::string>>>
            successors = planning_task.get_successor_states(node.state);
        std::cout << "Len of successors " << successors.size() << std::endl;
        for (auto opss : successors) {
            Operator op = opss.first;
            std::unordered_set<std::string> successor_state = opss.second;
            // for (std::string ss : successor_state) {
            if (closed.find(successor_state) == closed.end()) {
                std::cout << "Insert child" << std::endl;
                nodes.push_back(
                    make_child_node(&node, op.name, successor_state));
                queue.push(nodes[nodes.size() - 1]);
                closed.insert(successor_state);
            } else {
                std::cout << "Skip" << std::endl;
            }
            //}
        }
    }

    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

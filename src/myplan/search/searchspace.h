#pragma once
#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include <unordered_set>

class SearchNode {
   public:
    // Constructo
    SearchNode() {}
    SearchNode(std::unordered_set<std::string> state, SearchNode* parent, std::string action, int g)
        : state(state), parent(parent), action(action), g(g) {}

    // Extract the solution from the search space
    std::vector<std::string> extract_solution() {
        std::vector<std::string> solution;
        SearchNode* node = this;
        while (node->parent != nullptr) {
            // std::cout << node->action << std::endl;
            solution.push_back(node->action);
            node = node->parent;
        }
        std::reverse(solution.begin(), solution.end());
        return solution;
    }

    std::unordered_set<std::string> state;
    SearchNode* parent;
    std::string action;
    int g;
};

// Construct an initial search node
inline SearchNode make_root_node(std::unordered_set<std::string> initial_state) {
    return SearchNode(initial_state, nullptr, "", 0);
}

// Construct a new search node linked to a parent node
inline SearchNode make_child_node(SearchNode* parent_node, std::string action,
                                  std::unordered_set<std::string> state) {
    return SearchNode(state, parent_node, action, parent_node->g + 1);
}


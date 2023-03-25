#pragma once
#include <algorithm>
#include <iostream>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

class SearchNode {
   public:
    // Constructo
    // SearchNode() {}
    SearchNode(std::set<std::string>& state, int parent_id, std::string action,
               int g)
        : state(state), parent_id(parent_id), action(action), g(g) {}

    std::set<std::string> state;
    int parent_id;
    std::string action;
    int g;
};

// Extract the solution from the search space
inline std::vector<std::string> extract_solution(
    int this_id, std::vector<SearchNode>& nodes) {
    int node_id = this_id;
    std::vector<std::string> solution;
    while (nodes[node_id].parent_id != -1) {
        // std::cout << node->action << std::endl;
        solution.push_back(nodes[node_id].action);
        node_id = nodes[node_id].parent_id;
    }
    std::reverse(solution.begin(), solution.end());
    return solution;
}

// Construct an initial search node
inline SearchNode make_root_node(std::set<std::string>& initial_state) {
    return SearchNode(initial_state, -1, "", 0);
}

// Construct a new search node linked to a parent node
inline SearchNode make_child_node(int parent_id, int parent_g,
                                  std::string action,
                                  std::set<std::string>& state) {
    return SearchNode(state, parent_id, action, parent_g + 1);
}


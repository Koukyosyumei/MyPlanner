#pragma once
#include <algorithm>
#include <any>
#include <functional>
#include <iostream>
#include <memory>
#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

inline size_t hash_unordered_set(const std::unordered_set<int>& ss) {
    size_t seed = 0;
    for (int x : ss) {
        seed ^= std::hash<std::string>{}(std::to_string(x));
    }
    return seed;
}

class SearchNode {
   public:
    // Constructo
    // SearchNode() {}
    SearchNode(std::unordered_set<int>& state, int parent_id, int action, int g,
               size_t hash_value)
        : state(state),
          parent_id(parent_id),
          action(action),
          g(g),
          hash_value(hash_value) {}

    std::unordered_set<int> state;
    std::unordered_set<int> unreached;
    int parent_id;
    int action;
    int g;
    size_t hash_value;
};

// Extract the solution from the search space
inline std::vector<int> extract_solution(int this_id,
                                         std::vector<SearchNode>& nodes) {
    int node_id = this_id;
    std::vector<int> solution;
    while (nodes[node_id].parent_id != -1) {
        // std::cout << node->action << std::endl;
        solution.push_back(nodes[node_id].action);
        node_id = nodes[node_id].parent_id;
    }
    std::reverse(solution.begin(), solution.end());
    return solution;
}

// Construct an initial search node
inline SearchNode make_root_node(std::unordered_set<int>& initial_state) {
    return SearchNode(initial_state, -1, -1, 0,
                      hash_unordered_set(initial_state));
}

// Construct a new search node linked to a parent node
inline SearchNode make_child_node(int parent_id, int parent_g, int action,
                                  std::unordered_set<int>& state,
                                  size_t hash_val) {
    return SearchNode(state, parent_id, action, parent_g + 1, hash_val);
}


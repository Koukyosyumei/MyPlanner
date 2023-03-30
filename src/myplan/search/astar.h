#pragma once

#include <any>
#include <functional>
#include <limits>
#include <memory>
#include <queue>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

#include "../heuristic/base.h"
#include "../task.h"
#include "breadth_first_search.h"
#include "searchspace.h"

const int INF = std::numeric_limits<int>::max();

inline std::vector<std::string> astar(BaseTask& planning_task,
                                      Heuristic& heuristic) {
    int iteration = 0;
    int expansions = 0;
    std::priority_queue<pair<int, int>> queue;
    std::vector<SearchNode> nodes;
    nodes.push_back(make_root_node(planning_task.initial_state));
    queue.push({-1 * (heuristic.calculate_h(&nodes[0]) + nodes[0].g), 0});

    // std::unordered_set<std::unordered_set<std::string>, hash_unordered_set>
    //     closed = {planning_task.initial_state};
    std::unordered_map<std::unordered_set<std::string>, int> state_cost = {
        {nodes[0].state, 0}};
    std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
        successors;
    pair<int, int> front_status;
    int f, node_idx;

    while (!queue.empty()) {
        ++iteration;

        front_status = queue.top();
        f = -1 * front_status.first;
        node_idx = front_status.second;
        queue.pop();

        if (state_cost[nodes[node_idx].state] == nodes[node_idx].g) {
            expansions++;
            if (planning_task.goal_reached(nodes[node_idx].state)) {
                std::cout << iteration << " Nodes expanded" << std::endl;
                return extract_solution(node_idx, nodes);
            }

            successors =
                planning_task.get_successor_states(nodes[node_idx].state);
            for (auto& opss : successors) {
                SearchNode succ_node = make_child_node(
                    node_idx, nodes[node_idx].g, opss.first->name, opss.second);
                int h = heuristic.calculate_h(&succ_node);
                int old_succ_g = INF;
                if (state_cost.find(succ_node.state) != state_cost.end()) {
                    old_succ_g = state_cost[succ_node.state];
                }
                // std::cout << "succ_node.g " << succ_node.g << " " <<
                // old_succ_g
                //          << " " << INF << std::endl;
                if (succ_node.g < old_succ_g) {
                    nodes.emplace_back(succ_node);
                    queue.push({(h + succ_node.g), nodes.size() - 1});
                    state_cost.emplace(succ_node.state, succ_node.g);
                }
            }
        }
    }

    std::cout << iteration << " Nodes expanded" << std::endl;
    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

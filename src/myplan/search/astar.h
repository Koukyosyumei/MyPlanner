#pragma once

#include <any>
#include <functional>
#include <limits>
#include <memory>
#include <queue>
#include <set>
#include <string>
#include <tuple>
#include <unordered_set>
#include <vector>

#include "../heuristic/base.h"
#include "../task.h"
#include "breadth_first_search.h"
#include "searchspace.h"

const int INF = std::numeric_limits<int>::max();

inline std::vector<int> astar(BaseTask& planning_task, Heuristic& heuristic) {
    int iteration = 0;
    int expansions = 0;
    std::priority_queue<tuple<float, float, int>> queue;
    std::vector<SearchNode> nodes;
    nodes.push_back(make_root_node(planning_task.initial_state));
    float h = heuristic.calculate_h(0, nodes);
    queue.push({-1.0 * (h + (float)nodes[0].g), -h, 0});

    std::unordered_map<std::unordered_set<int>, int, hash_unordered_set>
        state_cost = {{nodes[0].state, 0}};
    std::vector<std::pair<int, std::unordered_set<int>>> successors;
    tuple<float, float, int> front_status;
    int node_idx, old_succ_g;

    while (!queue.empty()) {
        ++iteration;

        front_status = queue.top();
        node_idx = get<2>(front_status);
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
                    node_idx, nodes[node_idx].g, opss.first, opss.second);
                nodes.emplace_back(succ_node);
                h = heuristic.calculate_h(nodes.size() - 1, nodes);
                old_succ_g = INF;
                if (state_cost.find(opss.second) != state_cost.end()) {
                    old_succ_g = state_cost[opss.second];
                }
                if (succ_node.g < old_succ_g) {
                    queue.push(
                        {-1 * (h + (float)succ_node.g), -h, nodes.size() - 1});
                    state_cost.emplace(opss.second, succ_node.g);
                }
            }
        }
    }

    std::cout << iteration << " Nodes expanded" << std::endl;
    std::cerr << "No solution found" << std::endl;
    return {};  // No solution found
}

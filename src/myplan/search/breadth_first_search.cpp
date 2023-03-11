#include <queue>
#include <unordered_set>
#include <vector>

#include "searchspace.h"

std::vector<Operator> breadth_first_search(const PlanningTask& planning_task) {
    int iteration = 0;
    std::queue<SearchNode> queue;
    queue.push(make_root_node(planning_task.get_initial_state()));

    std::unordered_set<State> closed = {planning_task.get_initial_state()};
    while (!queue.empty()) {
        ++iteration;

        auto node = queue.front();
        queue.pop();

        if (planning_task.is_goal_reached(node.state)) {
            return node.extract_solution();
        }

        for (const auto& [op, successor_state] :
             planning_task.get_successor_states(node.state)) {
            if (closed.find(successor_state) == closed.end()) {
                queue.push(make_child_node(node, op, successor_state));
                closed.insert(successor_state);
            }
        }
    }

    return {};  // No solution found
}

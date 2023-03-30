#pragma once

#include "../search/searchspace.h"
#include "../task.h"

struct Heuristic {
    virtual float calculate_h(int this_id, std::vector<SearchNode> &nodes) = 0;
};

struct BlindHeuristic : Heuristic {
    Task task;
    BlindHeuristic(Task &task_) { task = task_; }

    float calculate_h(int this_id, std::vector<SearchNode> &nodes) {
        if (task.goal_reached(nodes[this_id].state)) {
            return 1.0;
        } else {
            return 0.0;
        }
    }
};

struct GoalCountHeuristic : Heuristic {
    Task task;
    GoalCountHeuristic(Task &task_) { task = task_; }

    float calculate_h(int this_id, std::vector<SearchNode> &nodes) {
        int cnt_unsatisfied_cond = 0;
        for (std::string g : task.goals) {
            if (nodes[this_id].state.find(g) == nodes[this_id].state.end()) {
                cnt_unsatisfied_cond++;
            }
        }
        return (float)cnt_unsatisfied_cond;
    }
};

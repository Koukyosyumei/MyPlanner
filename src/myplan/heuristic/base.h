#pragma once

#include "../search/searchspace.h"
#include "../task.h"

struct Heuristic {
    virtual int calculate_h(SearchNode *node) = 0;
};

struct BlindHeuristic : Heuristic {
    Task *task;
    BlindHeuristic(Task *task) : task(task) {}

    int calculate_h(SearchNode *node) {
        if (task->goal_reached(node->state)) {
            return 1;
        } else {
            return 0;
        }
    }
};

struct GoalCountHeuristic : Heuristic {
    Task *task;
    GoalCountHeuristic(Task *task) : task(task) {}

    int calculate_h(SearchNode *node) {
        int cnt_unsatisfied_cond = 0;
        for (std::string g : task->goals) {
            if (node->state.find(g) == node->state.end()) {
                cnt_unsatisfied_cond++;
            }
        }
        return cnt_unsatisfied_cond;
    }
};

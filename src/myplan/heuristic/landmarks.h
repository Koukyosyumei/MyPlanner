#pragma once

#include "numeric_limits"
#include "../search/searchspace.h"
#include "../task.h"
#include "base.h"

const int INF =  

Task _get_relaxed_task(Task task) {
    Task relaxed_task = task;
    for (Operator& op : relaxed_task.operators) {
        op.del_effects = {};
    }
    return relaxed_task;
}

std::unordered_set<std::string> get_landmarks(Task& _task) {
    Task task = _get_relaxed_task(_task);
    std::unordered_set<std::string> landmarks = task.goals;
    std::unordered_set<std::string> possible_landmarks(task.facts);
    for (std::string s : task.goals) {
        if (possible_landmarks.count(s) > 0) {
            possible_landmarks.erase(s);
        }
    }

    for (std::string fact : possible_landmarks) {
        std::unordered_set<std::string> current_state(task.initial_state);
        bool goal_reached = true;
        for (std::string g : task.goals) {
            if (current_state.find(g) == current_state.end()) {
                goal_reached = false;
            }
        }

        while (!goal_reached) {
            std::unordered_set<std::string> previous_state(current_state);

            for (Operator& op : task.operators) {
                if (op.applicable(current_state) &&
                    (op.add_effects.find(fact) != op.add_effects.end())) {
                    current_state = op.apply(current_state);

                    goal_reached = true;
                    for (std::string g : task.goals) {
                        if (current_state.find(g) == current_state.end()) {
                            goal_reached = false;
                        }
                    }
                    if (goal_reached) {
                        break;
                    }
                }
            }

            goal_reached = true;
            for (std::string g : task.goals) {
                if (current_state.find(g) == current_state.end()) {
                    goal_reached = false;
                }
            }
            if ((previous_state == current_state) && (!goal_reached)) {
                landmarks.emplace(fact);
                break;
            }

            goal_reached = true;
            for (std::string g : task.goals) {
                if (current_state.find(g) == current_state.end()) {
                    goal_reached = false;
                }
            }
        }
    }

    return landmarks;
}

int compute_landmark_costs(Task& task,
                           std::unordered_set<std::string>& landmarks) {
    std::unordered_map<Operator, std::vector<std::string>> op_to_lm;
    for (Operator& op : task.operators) {
        for (std::string landmark : landmarks) {
            if (op.add_effects.find(landmark) != op.add_effects.end()) {
                op_to_lm[op].push_back(landmark);
            }
        }
    }

    for (auto& item : op_to_lm) {
        int landmarks_achieving = item.second.size();
        for (std::string landmark : landmarks) {
            int tmp_cost = INF;
        }
    }
}

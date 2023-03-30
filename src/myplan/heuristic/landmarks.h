#pragma once

#include "../search/searchspace.h"
#include "../task.h"
#include "base.h"
#include "limits"

const float FLOAT_INF = std::numeric_limits<float>::max();

template <typename T>
bool is_subset(const std::unordered_set<T>& set1,
               const std::unordered_set<T>& set2) {
    for (const T& elem : set1) {
        if (set2.find(elem) == set2.end()) {
            return false;
        }
    }
    return true;
}

Task _get_relaxed_task(Task task) {
    Task relaxed_task = task;
    for (Operator& op : relaxed_task.operators) {
        op.del_effects = {};
    }
    return relaxed_task;
}

std::unordered_set<std::string> get_landmarks(Task& task_) {
    Task task = _get_relaxed_task(task_);
    std::unordered_set<std::string> landmarks(task.goals.begin(),
                                              task.goals.end());
    std::unordered_set<std::string> possible_landmarks(task.facts.begin(),
                                                       task.facts.end());
    for (std::string s : task.goals) {
        if (possible_landmarks.count(s) > 0) {
            possible_landmarks.erase(s);
        }
    }

    for (std::string fact : possible_landmarks) {
        std::unordered_set<std::string> current_state(
            task.initial_state.begin(), task.initial_state.end());
        bool goal_reached = is_subset(task.goals, current_state);

        while (!goal_reached) {
            std::unordered_set<std::string> previous_state(
                current_state.begin(), current_state.end());

            for (Operator op : task.operators) {
                if (op.applicable(current_state) &&
                    (op.add_effects.find(fact) == op.add_effects.end())) {
                    current_state = op.apply(current_state);
                    if (is_subset(task.goals, current_state)) {
                        break;
                    }
                }
            }

            if ((previous_state == current_state) &&
                !(is_subset(task.goals, current_state))) {
                landmarks.insert(fact);
                break;
            }

            goal_reached = is_subset(task.goals, current_state);
        }
    }

    return landmarks;
}

/*
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
            if (current_state.count(g) > 0) {
                goal_reached = false;
                break;
            }
        }

        while (!goal_reached) {
            std::unordered_set<std::string> previous_state(current_state);

            for (Operator& op : task.operators) {
                if (op.applicable(current_state) &&
                    (op.add_effects.find(fact) == op.add_effects.end())) {
                    current_state = op.apply(current_state);

                    goal_reached = true;
                    for (std::string g : task.goals) {
                        if (current_state.find(g) == current_state.end()) {
                            goal_reached = false;
                            break;
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
                    break;
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
                    break;
                }
            }
        }
    }

    return landmarks;
}*/

std::unordered_map<std::string, float> compute_landmark_costs(
    Task& task, std::unordered_set<std::string>& landmarks) {
    std::unordered_map<std::string, std::unordered_set<std::string>> op_to_lm;
    for (Operator& op : task.operators) {
        for (std::string landmark : landmarks) {
            if (op.add_effects.find(landmark) != op.add_effects.end()) {
                op_to_lm[op.name].emplace(landmark);
            }
        }
    }

    std::unordered_map<std::string, float> min_cost;
    for (auto& item : op_to_lm) {
        int landmarks_achieving = item.second.size();
        for (std::string landmark : item.second) {
            if (min_cost.find(landmark) == min_cost.end()) {
                min_cost[landmark] = FLOAT_INF;
            }
            min_cost[landmark] = min(min_cost[landmark],
                                     (float)(1.0) / float(landmarks_achieving));
        }
    }

    return min_cost;
}

struct LandmarkHeuristic : Heuristic {
    Task task;
    std::unordered_set<std::string> landmarks;
    std::unordered_map<std::string, float> costs;
    LandmarkHeuristic(Task& task_) {
        task = task_;
        landmarks = get_landmarks(task);
        costs = compute_landmark_costs(task, landmarks);
    }

    float calculate_h(int this_id, std::vector<SearchNode>& nodes) {
        std::unordered_set<std::string> unreached;
        if (nodes[this_id].parent_id == -1) {
            unreached = landmarks;
            for (std::string s : task.initial_state) {
                if (unreached.count(s) > 0) {
                    unreached.erase(s);
                }
            }
        } else {
            unreached = nodes[nodes[this_id].parent_id].unreached;
            if (unreached.count(nodes[this_id].action) > 0) {
                unreached.erase(nodes[this_id].action);
            }
        }

        nodes[this_id].unreached = unreached;

        for (std::string s : task.goals) {
            if (unreached.count(s) > 0) {
                unreached.emplace(s);
            }
        }
        for (std::string s : nodes[this_id].state) {
            if (unreached.count(s) > 0) {
                unreached.erase(s);
            }
        }

        float h = 0;
        for (std::string landmark : unreached) {
            h += costs[landmark];
        }

        return h;
    }
};

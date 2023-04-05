#pragma once

#include <queue>
#include <set>
#include <string>
#include <tuple>
#include <unordered_set>

#include "../search/searchspace.h"
#include "../task.h"
#include "base.h"
#include "limits"

struct RelaxedOperator {
    int name;
    std::vector<int> preconditions;
    std::vector<int> add_effects;
    int cost;
    int counter;

    RelaxedOperator(int name, std::vector<int>& preconditions,
                    std::vector<int>& add_effects)
        : name(name),
          preconditions(preconditions),
          add_effects(add_effects),
          cost(1),
          counter(preconditions.size()) {}
};

struct RelaxedFact {
    int name;
    std::vector<int> precondition_of;
    bool expanded;
    float distance;

    RelaxedFact() {}
    RelaxedFact(int name)
        : name(name),
          expanded(false),
          distance(std::numeric_limits<float>::max()) {}
};

struct _RelaxationHeuristic : Heuristic {
    flat_hash_map<int, RelaxedFact> facts;
    std::vector<RelaxedOperator> operators;
    flat_hash_set<int> init;
    flat_hash_set<int> goals;
    int tie_breaker;
    RelaxedFact start_state;

    _RelaxationHeuristic(Task& task)
        : tie_breaker(0),
          goals(task.goals),
          init(task.initial_state),
          start_state(RelaxedFact(-1)) {
        facts.emplace(-1, start_state);
        for (int fact : task.facts) {
            facts.emplace(fact, RelaxedFact(fact));
        }

        for (EncodedOperator& op : task.operators) {
            operators.emplace_back(RelaxedOperator(
                op.name, op.preconditions_vec, op.add_effects_vec));

            for (int var : op.preconditions_vec) {
                facts[var].precondition_of.emplace_back(operators.size() - 1);
            }

            if (op.preconditions_vec.size() == 0) {
                start_state.precondition_of.emplace_back(operators.size() - 1);
            }
        }
    }

    virtual float eval(std::vector<float>& distances) = 0;

    float calculate_h(int this_id, std::vector<SearchNode>& nodes) {
        init_distance(nodes[this_id].state);

        std::priority_queue<tuple<float, int, int>> queue;
        queue.push({0, -tie_breaker, start_state.name});
        tie_breaker++;

        for (int fact : nodes[this_id].state) {
            queue.push({-facts[fact].distance, -tie_breaker, facts[fact].name});
            tie_breaker++;
        }

        dijkstra(queue);
        float h = calc_goal_h();
        return h;
    }

    void reset_fact(RelaxedFact& fact, const flat_hash_set<int>& state) {
        fact.expanded = false;
        if (state.find(fact.name) != state.end()) {
            fact.distance = 0;
        } else {
            fact.distance = std::numeric_limits<float>::max();
        }
    }

    void init_distance(const flat_hash_set<int>& state) {
        reset_fact(start_state, state);

        for (auto& item : facts) {
            reset_fact(item.second, state);
        }

        for (RelaxedOperator& op : operators) {
            op.counter = op.preconditions.size();
        }
    }

    float get_cost(RelaxedOperator& op, RelaxedFact& pre) {
        float cost = 0;
        if (op.preconditions.size() != 0) {
            std::vector<float> tmp_distances;
            tmp_distances.reserve(op.preconditions.size());
            for (int pre : op.preconditions) {
                tmp_distances.emplace_back(facts[pre].distance);
            }
            cost = eval(tmp_distances);
        } else {
            cost = 0;
        }
        return cost + op.cost;
    }

    float calc_goal_h() {
        if (goals.size() != 0) {
            std::vector<float> tmp_distances;
            tmp_distances.reserve(goals.size());
            for (int fact : goals) {
                tmp_distances.emplace_back(facts[fact].distance);
            }
            return eval(tmp_distances);
        } else {
            return 0.0;
        }
    }

    bool finished(flat_hash_set<int>& achived_goals,
                  std::priority_queue<tuple<float, int, int>>& queue) {
        // bool flag = true;
        // for (int i : goals) {
        //    if (achived_goals.find(i) != achived_goals.end()) {
        //        flag = false;
        //        break;
        //    }
        // }
        return (achived_goals == goals) || (queue.empty());
    }

    void dijkstra(std::priority_queue<tuple<float, int, int>>& queue) {
        flat_hash_set<int> achived_goals;
        tuple<float, int, int> front;
        float _dist, tmp_dist;
        int _tie, fact_idx, fact_id, num_precondition_of;
        while (!finished(achived_goals, queue)) {
            front = queue.top();
            queue.pop();
            _dist = -1 * get<0>(front);
            _tie = -1 * get<1>(front);
            fact_id = get<2>(front);

            if (goals.find(facts[fact_id].name) != goals.end()) {
                achived_goals.emplace(facts[fact_id].name);
            }
            if (!facts[fact_id].expanded) {
                num_precondition_of = facts[fact_id].precondition_of.size();
                for (int i = 0; i < num_precondition_of; i++) {
                    operators[facts[fact_id].precondition_of[i]].counter--;
                    if (operators[facts[fact_id].precondition_of[i]].counter <=
                        0) {
                        for (int n :
                             operators[facts[fact_id].precondition_of[i]]
                                 .add_effects) {
                            tmp_dist = get_cost(
                                operators[facts[fact_id].precondition_of[i]],
                                facts[fact_id]);
                            if (tmp_dist < facts[n].distance) {
                                facts[n].distance = tmp_dist;
                                queue.push({-tmp_dist, -tie_breaker, n});
                                tie_breaker++;
                            }
                        }
                    }
                }
                facts[fact_id].expanded = true;
            }
        }
    }
};

struct hAddHeuristic : _RelaxationHeuristic {
    using _RelaxationHeuristic::_RelaxationHeuristic;

    float eval(std::vector<float>& distances) {
        float res = 0;
        for (float d : distances) {
            res += d;
        }
        return res;
    }
};

struct hMaxHeuristic : _RelaxationHeuristic {
    using _RelaxationHeuristic::_RelaxationHeuristic;

    float eval(std::vector<float>& distances) {
        float res = 0;
        for (float d : distances) {
            if (d > res) {
                res = d;
            }
        }
        return res;
    }
};

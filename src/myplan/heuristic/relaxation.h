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
    std::vector<RelaxedOperator> precondition_of;
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
        for (int fact : task.facts) {
            facts.emplace(fact, RelaxedFact(fact));
        }

        for (EncodedOperator& op : task.operators) {
            operators.emplace_back(RelaxedOperator(
                op.name, op.preconditions_vec, op.add_effects_vec));

            for (int var : op.preconditions_vec) {
                facts[var].precondition_of.emplace_back(
                    operators[operators.size() - 1]);
            }

            if (op.preconditions_vec.size() == 0) {
                start_state.precondition_of.emplace_back(
                    operators[operators.size() - 1]);
            }
        }
    }

    virtual float eval(std::vector<float>& distances) = 0;

    float calculate_h(int this_id, std::vector<SearchNode>& nodes) {
        flat_hash_set<int> state = nodes[this_id].state;
        init_distance(state);

        std::priority_queue<tuple<float, int, int>> queue;
        queue.push({0, -tie_breaker, 0});
        std::vector<RelaxedFact> states = {start_state};
        tie_breaker++;

        for (int fact : state) {
            queue.push({-facts[fact].distance, -tie_breaker, states.size()});
            states.emplace_back(facts[fact]);
            tie_breaker++;
        }

        dijkstra(queue, states);

        return calc_goal_h();
    }

    void reset_fact(RelaxedFact& fact, flat_hash_set<int>& state) {
        fact.expanded = false;
        if (state.find(fact.name) != state.end()) {
            fact.distance = 0;
        } else {
            fact.distance = std::numeric_limits<float>::max();
        }
    }

    void init_distance(flat_hash_set<int>& state) {
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
        return (achived_goals == goals) || (queue.empty());
    }

    void dijkstra(std::priority_queue<tuple<float, int, int>>& queue,
                  std::vector<RelaxedFact>& states) {
        flat_hash_set<int> achived_goals;
        tuple<float, int, int> front;
        float _dist, tmp_dist;
        int _tie, fact_idx;
        RelaxedFact fact;
        while (!finished(achived_goals, queue)) {
            front = queue.top();
            queue.pop();
            _dist = -1 * get<0>(front);
            _tie = -1 * get<1>(front);
            fact_idx = get<2>(front);
            fact = states[fact_idx];

            if (goals.find(fact.name) != goals.end()) {
                achived_goals.emplace(fact.name);
            }
            if (!fact.expanded) {
                for (RelaxedOperator& op : fact.precondition_of) {
                    op.counter--;
                    if (op.counter <= 0) {
                        for (int n : op.add_effects) {
                            RelaxedFact neighbor = facts[n];
                            tmp_dist = get_cost(op, fact);
                            if (tmp_dist < neighbor.distance) {
                                neighbor.distance = tmp_dist;
                                queue.push(
                                    {-tmp_dist, -tie_breaker, states.size()});
                                states.emplace_back(neighbor);
                                tie_breaker++;
                            }
                        }
                    }
                }
                fact.expanded = true;
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

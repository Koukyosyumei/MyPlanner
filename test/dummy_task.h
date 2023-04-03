#include <set>
#include <string>
#include <unordered_set>

#include "myplan/task.h"

class DummyTask : public BaseTask {
   public:
    DummyTask(std::string name, flat_hash_set<int> initial_state,
              flat_hash_set<int> goals) {
        this->name = name;
        this->initial_state = initial_state;
        this->goals = goals;
    }

    bool goal_reached(flat_hash_set<int>& state) override {
        for (int g : goals) {
            if (state.find(g) == state.end()) {
                return false;
            }
        }
        return true;
    }

    std::vector<std::pair<int, pair<size_t, flat_hash_set<int>>>>
    get_successor_states(flat_hash_set<int>& state,
                         size_t hash_val) override {
        std::vector<std::pair<int, pair<size_t, flat_hash_set<int>>>>
            succesors;
        std::vector<int> emp_vec;
        EncodedOperator* sub1 =
            new EncodedOperator(0, emp_vec, emp_vec, emp_vec);
        EncodedOperator* add2 =
            new EncodedOperator(2, emp_vec, emp_vec, emp_vec);
        EncodedOperator* add1 =
            new EncodedOperator(1, emp_vec, emp_vec, emp_vec);
        for (int s : state) {
            if (0 < s) {
                flat_hash_set<int> tmp_u = {s - 1};
                succesors.push_back(
                    std::make_pair(sub1->name, make_pair(s - 1, tmp_u)));
            }
            if (s < 9) {
                flat_hash_set<int> tmp_u = {s + 2};
                succesors.push_back(
                    std::make_pair(add2->name, make_pair(s + 2, tmp_u)));
            }
            if (s < 10) {
                flat_hash_set<int> tmp_u = {s + 1};
                succesors.push_back(
                    std::make_pair(add1->name, make_pair(s + 1, tmp_u)));
            }
        }
        return succesors;
    }
};

inline DummyTask get_simple_search_space() {
    return DummyTask("5+2+2+1", {5}, {10});
}
inline DummyTask get_simple_search_space2() {
    return DummyTask("5-1-1-1-1", {5}, {1});
}
inline DummyTask get_search_space_at_goal() {
    return DummyTask("5+nothing", {5}, {5});
}
inline DummyTask get_search_no_solution() {
    return DummyTask("5to20", {5}, {20});
}

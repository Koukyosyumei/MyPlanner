#include <string>
#include <unordered_set>

#include "myplan/task.h"

class DummyTask : public BaseTask {
   public:
    DummyTask(std::string name, std::unordered_set<std::string> initial_state,
              std::unordered_set<std::string> goals) {
        this->name = name;
        this->initial_state = initial_state;
        this->goals = goals;
    }

    bool goal_reached(std::unordered_set<std::string>& state) override {
        return goals == state;
    }

    std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
    get_successor_states(std::unordered_set<std::string>& state) override {
        std::vector<std::pair<Operator*, std::unordered_set<std::string>>>
            succesors;
        std::vector<std::string> emp_vec;
        Operator* sub1 = new Operator("sub1", emp_vec, emp_vec, emp_vec);
        Operator* add2 = new Operator("add2", emp_vec, emp_vec, emp_vec);
        Operator* add1 = new Operator("add1", emp_vec, emp_vec, emp_vec);
        for (std::string s : state) {
            if (0 < std::stoi(s)) {
                std::unordered_set<std::string> tmp_u = {
                    std::to_string(std::stoi(s) - 1)};
                succesors.push_back(std::make_pair(sub1, tmp_u));
            }
            if (std::stoi(s) < 9) {
                std::unordered_set<std::string> tmp_u = {
                    std::to_string(std::stoi(s) + 2)};
                succesors.push_back(std::make_pair(add2, tmp_u));
            }
            if (std::stoi(s) < 10) {
                std::unordered_set<std::string> tmp_u = {
                    std::to_string(std::stoi(s) + 1)};
                succesors.push_back(std::make_pair(add1, tmp_u));
            }
        }
        return succesors;
    }
};

inline DummyTask get_simple_search_space() {
    return DummyTask("5+2+2+1", {"5"}, {"10"});
}
inline DummyTask get_simple_search_space2() {
    return DummyTask("5-1-1-1-1", {"5"}, {"1"});
}
inline DummyTask get_search_space_at_goal() {
    return DummyTask("5+nothing", {"5"}, {"5"});
}
inline DummyTask get_search_no_solution() {
    return DummyTask("5to20", {"5"}, {"20"});
}

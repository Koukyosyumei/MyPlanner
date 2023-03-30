#include <gtest/gtest.h>

#include <cassert>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "myplan/heuristic/landmarks.h"
#include "myplan/task.h"

using namespace std;

TEST(LandmarkHeuristic, ComputeLandmarkCosts) {
    std::vector<std::string> v1 = {};
    std::vector<std::string> v2 = {"A", "C"};
    std::vector<std::string> v3 = {"B", "C"};
    std::vector<std::string> v4 = {"D"};
    Operator op1("op1", v1, v2, v1);
    Operator op2("op2", v1, v3, v1);
    Operator op3("op3", v1, v4, v1);
    std::unordered_set<std::string> facts = {};
    std::unordered_set<std::string> init = {};
    std::unordered_set<std::string> goals = {};
    std::vector<Operator> operators = {op1, op2, op3};
    Task task1("task1", facts, init, goals, operators);

    std::unordered_set<std::string> landmarks = {"A", "C", "D"};
    std::unordered_map<std::string, float> costs =
        compute_landmark_costs(task1, landmarks);

    ASSERT_EQ(costs["A"], 0.5);
    ASSERT_EQ(costs["C"], 0.5);
    ASSERT_EQ(costs["D"], 1.0);
}

TEST(LandmarkHeuristic, RelaxedTask) {
    std::vector<std::string> v1 = {"A"};
    std::vector<std::string> v2 = {"A", "C"};
    std::vector<std::string> v3 = {"B", "C"};
    std::unordered_set<std::string> v4 = {};

    Operator op1("op1", v1, v2, v3);
    std::vector<Operator> operators = {op1};
    Task task("task1", v4, v4, v4, operators);
    Task relaxed_task = _get_relaxed_task(task);
    ASSERT_EQ(relaxed_task.operators[0].del_effects.size(), 0);
}

TEST(LandmarkHeuristic, LandmarksGoal) {
    std::unordered_set<std::string> s1 = {};
    std::unordered_set<std::string> s2 = {"A"};
    std::vector<Operator> operators;

    Task task = Task("task1", s1, s1, s2, operators);
    std::unordered_set<std::string> test_result = {"A"};
    ASSERT_EQ(get_landmarks(task), test_result);
}

TEST(LandmarkHeuristic, Landmarks) {
    std::vector<std::string> v1 = {};
    std::vector<std::string> v2 = {"A"};
    std::vector<std::string> v3 = {"B"};
    Operator op1("op1", v1, v2, v1);
    Operator op2("op2", v2, v3, v1);

    std::unordered_set<std::string> v4 = {"A", "B"};
    std::unordered_set<std::string> v5 = {};
    std::unordered_set<std::string> v6 = {"B"};

    std::vector<Operator> operators = {op1, op2};
    Task task = Task("task1", v4, v5, v6, operators);
    std::unordered_set<std::string> test_result = {"A", "B"};
    ASSERT_EQ(get_landmarks(task), test_result);
}

TEST(LandmarkHeuristic, Heuristics) {
    std::unordered_set<std::string> s_abc = {"A", "B", "C"};
    std::unordered_set<std::string> s_a = {"A"};
    std::unordered_set<std::string> s_ab = {"A", "B"};
    std::unordered_set<std::string> s_cb = {"C", "B"};
    std::vector<std::string> v_a = {"A"};
    std::vector<std::string> v_b = {"B"};
    std::vector<std::string> v_c = {"C"};
    std::vector<std::string> v_bc = {"B", "C"};
    std::vector<std::string> v_emp = {};
    Operator op_ab("op1", v_a, v_b, v_emp);
    Operator op_bc("op2", v_b, v_c, v_emp);
    Operator op_ba("op3", v_b, v_a, v_emp);
    Operator op_abc("op1", v_a, v_bc, v_emp);

    std::vector<Operator> ops1 = {op_ab, op_bc, op_ba};
    Task task1("task1", s_abc, s_a, s_cb, ops1);
    std::vector<Operator> ops2 = {op_ab, op_bc};
    Task task2("task2", s_abc, s_ab, s_cb, ops2);
    std::vector<Operator> ops4 = {op_abc};
    Task task4("task4", s_abc, s_a, s_cb, ops4);

    LandmarkHeuristic heuristic1(task1);
    vector<SearchNode> nodes1 = {make_root_node(task1.initial_state)};
    std::unordered_set<std::string> expected_landmark1 = {"B", "C"};
    std::unordered_map<std::string, float> expected_lmc1 = {{"B", 1}, {"C", 1}};
    ASSERT_EQ(get_landmarks(task1), expected_landmark1);
    ASSERT_EQ(compute_landmark_costs(task1, expected_landmark1), expected_lmc1);
    ASSERT_EQ(heuristic1.calculate_h(0, nodes1), 2);

    LandmarkHeuristic heuristic2(task2);
    vector<SearchNode> nodes2 = {make_root_node(task2.initial_state)};
    ASSERT_EQ(get_landmarks(task2), expected_landmark1);
    ASSERT_EQ(compute_landmark_costs(task2, expected_landmark1), expected_lmc1);
    ASSERT_EQ(heuristic2.calculate_h(0, nodes2), 1);

    LandmarkHeuristic heuristic4(task4);
    vector<SearchNode> nodes4 = {make_root_node(task4.initial_state)};
    std::unordered_set<std::string> expected_landmark4 = {"B", "C"};
    std::unordered_map<std::string, float> expected_lmc4 = {{"B", 0.5}, {"C", 0.5}};
    ASSERT_EQ(get_landmarks(task4), expected_landmark4);
    ASSERT_EQ(compute_landmark_costs(task4, expected_landmark4), expected_lmc4);
    ASSERT_EQ(heuristic4.calculate_h(0, nodes4), 1);
}

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
    std::vector<int> v1 = {};
    std::vector<int> v2 = {0, 2};
    std::vector<int> v3 = {1, 2};
    std::vector<int> v4 = {3};
    EncodedOperator op1(4, v1, v2, v1);
    EncodedOperator op2(5, v1, v3, v1);
    EncodedOperator op3(6, v1, v4, v1);
    flat_hash_set<int> facts = {};
    flat_hash_set<int> init = {};
    flat_hash_set<int> goals = {};
    std::vector<EncodedOperator> operators = {op1, op2, op3};
    Task task1("task1", facts, init, goals, operators);

    flat_hash_set<int> landmarks = {0, 2, 3};
    flat_hash_map<int, float> costs =
        compute_landmark_costs(task1, landmarks);

    ASSERT_EQ(costs[0], 0.5);
    ASSERT_EQ(costs[2], 0.5);
    ASSERT_EQ(costs[3], 1.0);
}

TEST(LandmarkHeuristic, RelaxedTask) {
    std::vector<int> v1 = {0};
    std::vector<int> v2 = {0, 2};
    std::vector<int> v3 = {1, 2};
    flat_hash_set<int> v4 = {};

    EncodedOperator op1(4, v1, v2, v3);
    std::vector<EncodedOperator> operators = {op1};
    Task task("task1", v4, v4, v4, operators);
    Task relaxed_task = _get_relaxed_task(task);
    ASSERT_EQ(relaxed_task.operators[0].del_effects.size(), 0);
}

TEST(LandmarkHeuristic, LandmarksGoal) {
    flat_hash_set<int> s1 = {};
    flat_hash_set<int> s2 = {0};
    std::vector<EncodedOperator> operators;

    Task task = Task("task1", s1, s1, s2, operators);
    flat_hash_set<int> test_result = {0};
    ASSERT_EQ(get_landmarks(task), test_result);
}

TEST(LandmarkHeuristic, Landmarks) {
    std::vector<int> v1 = {};
    std::vector<int> v2 = {0};
    std::vector<int> v3 = {1};
    EncodedOperator op1(4, v1, v2, v1);
    EncodedOperator op2(5, v2, v3, v1);

    flat_hash_set<int> v4 = {0, 1};
    flat_hash_set<int> v5 = {};
    flat_hash_set<int> v6 = {1};

    std::vector<EncodedOperator> operators = {op1, op2};
    Task task = Task("task1", v4, v5, v6, operators);
    flat_hash_set<int> test_result = {0, 1};
    ASSERT_EQ(get_landmarks(task), test_result);
}

TEST(LandmarkHeuristic, Heuristics) {
    flat_hash_set<int> s_abc = {0, 1, 2};
    flat_hash_set<int> s_a = {0};
    flat_hash_set<int> s_ab = {0, 1};
    flat_hash_set<int> s_cb = {2, 1};
    std::vector<int> v_a = {0};
    std::vector<int> v_b = {1};
    std::vector<int> v_c = {2};
    std::vector<int> v_bc = {1, 2};
    std::vector<int> v_emp = {};
    EncodedOperator op_ab(4, v_a, v_b, v_emp);
    EncodedOperator op_bc(5, v_b, v_c, v_emp);
    EncodedOperator op_ba(6, v_b, v_a, v_emp);
    EncodedOperator op_abc(4, v_a, v_bc, v_emp);

    std::vector<EncodedOperator> ops1 = {op_ab, op_bc, op_ba};
    Task task1("task1", s_abc, s_a, s_cb, ops1);
    std::vector<EncodedOperator> ops2 = {op_ab, op_bc};
    Task task2("task2", s_abc, s_ab, s_cb, ops2);
    std::vector<EncodedOperator> ops4 = {op_abc};
    Task task4("task4", s_abc, s_a, s_cb, ops4);

    LandmarkHeuristic heuristic1(task1);
    vector<SearchNode> nodes1 = {make_root_node(task1.initial_state)};
    flat_hash_set<int> expected_landmark1 = {1, 2};
    flat_hash_map<int, float> expected_lmc1 = {{1, 1}, {2, 1}};
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
    flat_hash_set<int> expected_landmark4 = {1, 2};
    flat_hash_map<int, float> expected_lmc4 = {{1, 0.5}, {2, 0.5}};
    ASSERT_EQ(get_landmarks(task4), expected_landmark4);
    ASSERT_EQ(compute_landmark_costs(task4, expected_landmark4), expected_lmc4);
    ASSERT_EQ(heuristic4.calculate_h(0, nodes4), 1);
}

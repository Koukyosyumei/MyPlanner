#include <gtest/gtest.h>

#include <string>
#include <unordered_set>

#include "myplan/task.h"

TEST(EncodedOperatorTest, Applicable) {
    std::unordered_set<int> s1 = {1};
    std::unordered_set<int> s2 = {2};
    std::unordered_set<int> s3 = {1, 2};
    std::vector<int> v1 = {1};
    std::vector<int> v2 = {2};
    std::vector<int> v3 = {};
    EncodedOperator op1(4, v1, v2, v3);
    ASSERT_TRUE(op1.applicable(s1));
    ASSERT_FALSE(op1.applicable(s2));
    ASSERT_TRUE(op1.applicable(s3));
}

TEST(EncodedOperatorTest, Application) {
    std::unordered_set<int> s1 = {1};
    std::unordered_set<int> s2 = {2};
    std::unordered_set<int> s3 = {1, 2};
    std::vector<int> v1 = {1};
    std::vector<int> v2 = {2};
    std::vector<int> v3 = {};
    std::vector<int> v4 = {2};
    EncodedOperator op1(4, v1, v2, v3);
    EncodedOperator op4(4, v1, v2, v4);
    ASSERT_EQ(op1.apply(s1, 1).second, s3);
    ASSERT_EQ(op4.apply(s1, 1).second, s3);
}

TEST(EncodedOperatorTest, Successors) {
    std::unordered_set<int> s1 = {1};
    std::unordered_set<int> s2 = {2};
    std::unordered_set<int> s3 = {1, 2};
    std::vector<int> v1 = {1};
    std::vector<int> v2 = {2};
    std::vector<int> v3 = {};
    std::vector<int> v4 = {};
    EncodedOperator op1(4, v1, v2, v3);
    EncodedOperator op2(4, v1, v3, v4);
    EncodedOperator op3(4, v2, v1, v3);
    std::unordered_set<int> facts = {1, 2, 3};
    std::unordered_set<int> init = {1};
    std::set<int> init_set = {1};
    std::unordered_set<int> goals = {1, 2};
    std::vector<EncodedOperator> operators = {op1, op2, op3};
    Task task1("task1", facts, init, goals, operators);

    std::vector<std::pair<EncodedOperator*, std::unordered_set<int>>> test_ss =
        {{&op1, {1, 2}}, {&op2, {1}}};
    std::vector<std::pair<int, pair<size_t, std::unordered_set<int>>>> ss =
        task1.get_successor_states(init, 1);
    ASSERT_EQ(ss[0].first, test_ss[0].first->name);
    ASSERT_EQ(ss[1].first, test_ss[1].first->name);
    ASSERT_EQ(ss[0].second.second, test_ss[0].second);
    ASSERT_EQ(ss[1].second.second, test_ss[1].second);
    std::unordered_set<int> test_v3 = {3};
    ASSERT_EQ(task1.get_successor_states(test_v3, 0).size(), 0);

    ASSERT_FALSE(task1.goal_reached(init));
    std::unordered_set<int> test_goal = {1, 2};
    ASSERT_TRUE(task1.goal_reached(test_goal));
}


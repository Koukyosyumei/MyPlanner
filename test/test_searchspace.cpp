#include <gtest/gtest.h>

#include <string>
#include <unordered_set>
#include <vector>

#include "myplan/search/searchspace.h"

std::unordered_set<int> state1 = {1};
std::unordered_set<int> state2 = {2};
std::unordered_set<int> state3 = {3};
std::unordered_set<int> state4 = {4};
std::unordered_set<int> state5 = {5};
SearchNode root = make_root_node(state1);
SearchNode child1 = make_child_node(0, root.g, 6, state2, root.hash_value);
SearchNode child2 = make_child_node(0, root.g, 7, state3, root.hash_value);
SearchNode grandchild1 =
    make_child_node(1, child1.g, 8, state4, child1.hash_value);
SearchNode grandchild2 =
    make_child_node(2, child2.g, 9, state5, child2.hash_value);

TEST(searchspace, ExtractSolution) {
    std::vector<SearchNode> nodes = {root, child1, child2, grandchild1,
                                     grandchild2};
    std::vector<int> solution_0;
    solution_0 = extract_solution(0, nodes);
    ASSERT_EQ(solution_0.size(), 0);
    std::vector<int> test1 = {6, 8};
    std::vector<int> test2 = {7, 9};
    std::vector<int> solution_1, solution_2;
    solution_1 = extract_solution(3, nodes);
    solution_2 = extract_solution(4, nodes);
    ASSERT_EQ(solution_1, test1);
    ASSERT_EQ(solution_2, test2);
}

TEST(searchspace, GValues) {
    ASSERT_EQ(root.g, 0);
    ASSERT_EQ(child1.g, 1);
    ASSERT_EQ(grandchild2.g, 2);
}

TEST(searchspace, States) {
    for (int s : root.state) {
        ASSERT_EQ(s, 1);
    }
    for (int s : child2.state) {
        ASSERT_EQ(s, 3);
    }
    for (int s : grandchild1.state) {
        ASSERT_EQ(s, 4);
    }
}

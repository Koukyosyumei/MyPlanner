#include <gtest/gtest.h>

#include <string>
#include <unordered_set>
#include <vector>

#include "myplan/search/searchspace.h"

SearchNode root = make_root_node({"state1"});
SearchNode child1 = make_child_node(0, root.g, "action1", {"state2"});
SearchNode child2 = make_child_node(0, root.g, "action2", {"state3"});
SearchNode grandchild1 = make_child_node(1, child1.g, "action3", {"state4"});
SearchNode grandchild2 = make_child_node(2, child2.g, "action4", {"state5"});

TEST(searchspace, ExtractSolution) {
    std::vector<SearchNode> nodes = {root, child1, child2, grandchild1, grandchild2};
    std::vector<std::string> solution_0;
    solution_0 = extract_solution(0, nodes);
    ASSERT_EQ(solution_0.size(), 0);
    std::vector<std::string> test1 = {"action1", "action3"};
    std::vector<std::string> test2 = {"action2", "action4"};
    std::vector<std::string> solution_1, solution_2;
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
    for (std::string s : root.state) {
        ASSERT_EQ(s, "state1");
    }
    for (std::string s : child2.state) {
        ASSERT_EQ(s, "state3");
    }
    for (std::string s : grandchild1.state) {
        ASSERT_EQ(s, "state4");
    }
}

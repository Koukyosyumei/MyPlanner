#include <gtest/gtest.h>

#include <string>
#include <unordered_set>
#include <vector>

#include "myplan/search/searchspace.h"

SearchNode root = make_root_node({"state1"});
SearchNode child1 = make_child_node(&root, "action1", {"state2"});
SearchNode child2 = make_child_node(&root, "action2", {"state3"});
SearchNode grandchild1 = make_child_node(&child1, "action3", {"state4"});
SearchNode grandchild2 = make_child_node(&child2, "action4", {"state5"});

TEST(searchspace, ExtractSolution) {
    ASSERT_EQ(root.extract_solution().size(), 0);
    std::vector<std::string> test1 = {"action1", "action3"};
    std::vector<std::string> test2 = {"action2", "action4"};
    ASSERT_EQ(grandchild1.extract_solution(), test1);
    ASSERT_EQ(grandchild2.extract_solution(), test2);
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

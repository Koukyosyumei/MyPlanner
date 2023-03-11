#include <gtest/gtest.h>

#include <string>
#include <unordered_set>

#include "myplan/search/searchspace.cpp"

SearchNode root = make_root_node("state1");
SearchNode child1 = make_child_node(&root, "action1", "state2");
SearchNode child2 = make_child_node(&root, "action2", "state3");
SearchNode grandchild1 = make_child_node(&child1, "action3", "state4");
SearchNode grandchild2 = make_child_node(&child2, "action4", "state5");

TEST(searchspace, extract_solution) {
    ASSERT_EQ(root.extract_solution().size(), 0);
}

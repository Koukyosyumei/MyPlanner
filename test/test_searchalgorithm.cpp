#include <gtest/gtest.h>

#include <string>
#include <unordered_set>
#include <vector>

#include "dummy_task.h"
#include "myplan/search/breadth_first_search.h"

TEST(breadth_first, SearchAtGoal) {
    DummyTask task = get_search_space_at_goal();
    std::vector<std::string> solution = breadth_first_search(task);
    ASSERT_EQ(solution.size(), 0);
}

TEST(breadth_first, SearchNoSolution) {
    DummyTask task = get_search_no_solution();
    std::vector<std::string> solution = breadth_first_search(task);
    ASSERT_EQ(solution.size(), 0);
}

TEST(breadth_first, SearchThreeStep) {
    DummyTask task = get_simple_search_space();
    std::vector<std::string> solution = breadth_first_search(task);
    ASSERT_EQ(solution.size(), 3);
}

TEST(breadth_first, SearchFourStep) {
    DummyTask task = get_simple_search_space2();
    std::vector<std::string> solution = breadth_first_search(task);
    ASSERT_EQ(solution.size(), 4);
}

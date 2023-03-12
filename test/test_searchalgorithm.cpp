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

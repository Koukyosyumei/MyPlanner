#include <gtest/gtest.h>

#include <cassert>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
#include <string>
#include <vector>

#include "myplan/settrie.h"

TEST(settrie, KeyIsIntAndValueIsString) {
    SetTrie<int, std::string> st;
    st.assign({1, 2}, "A");
    st.assign({1, 2, 3}, "B");
    st.assign({1, 2, 3}, "BB");
    st.assign({2, 3, 5}, "C");

    std::set<int> query_1 = {1, 2};
    std::vector<std::string> result_1 = st.subsets(query_1);
    std::vector<std::string> groundtruth_1 = {"A"};
    ASSERT_EQ(result_1, groundtruth_1);

    std::set<int> query_2 = {1, 2, 3};
    std::vector<std::string> result_2 = st.subsets(query_2);
    std::vector<std::string> groundtruth_2 = {"A", "B", "BB"};
    ASSERT_EQ(result_2, groundtruth_2);

    std::set<int> query_3 = {1, 3, 5};
    std::vector<std::string> result_3 = st.subsets(query_3);
    std::vector<std::string> groundtruth_3 = {};
    ASSERT_EQ(result_3, groundtruth_3);
}

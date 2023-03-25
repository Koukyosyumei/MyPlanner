#include <gtest/gtest.h>

#include <cassert>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
#include <string>
#include <vector>

#include "myplan/settrie.h"
#include "myplan/task.h"

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

TEST(settrie, KeyIsStringAndValueIsOperation) {
    std::vector<std::string> pre1 = {"var1"};
    std::vector<std::string> pre2 = {"var2"};
    std::vector<std::string> pre3 = {};
    std::vector<std::string> ade1 = {};
    std::vector<std::string> ade2 = {"var3"};
    std::vector<std::string> ade3 = {"var1"};
    std::vector<std::string> dee1 = {"var3"};
    std::vector<std::string> dee2 = {};
    std::vector<std::string> dee3 = {"var4"};
    Operator op1 = Operator("op1", pre1, ade1, dee1);
    Operator op2 = Operator("op2", pre2, ade2, dee2);
    Operator op3 = Operator("op3", pre3, ade3, dee3);

    SetTrie<std::string, Operator*> st;
    st.assign({"cond1", "cond2"}, &op1);
    st.assign({"cond1", "cond2", "cond3"}, &op2);
    st.assign({"cond2", "cond3", "cond5"}, &op3);

    std::set<std::string> query_1 = {"cond1", "cond2"};
    std::vector<Operator*> result_1 = st.subsets(query_1);
    std::vector<Operator*> groundtruth_1 = {&op1};
    ASSERT_EQ(result_1, groundtruth_1);

    std::set<std::string> query_2 = {"cond1", "cond2", "cond3"};
    std::vector<Operator*> result_2 = st.subsets(query_2);
    std::vector<Operator*> groundtruth_2 = {&op1, &op2};
    ASSERT_EQ(result_2, groundtruth_2);

    std::set<std::string> query_3 = {"cond1", "cond3", "cond5"};
    std::vector<Operator*> result_3 = st.subsets(query_3);
    std::vector<Operator*> groundtruth_3 = {};
    ASSERT_EQ(result_3, groundtruth_3);
}

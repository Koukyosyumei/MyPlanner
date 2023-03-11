#include <gtest/gtest.h>

#include <string>
#include <unordered_set>

#include "myplan/task.cpp"

TEST(OperatorTest, Applicable) {
    std::unordered_set<std::string> s1 = {"var1"};
    std::unordered_set<std::string> s2 = {"var2"};
    std::unordered_set<std::string> s3 = {"var1", "var2"};
    std::vector<std::string> v1 = {"var1"};
    std::vector<std::string> v2 = {"var2"};
    std::vector<std::string> v3 = {};
    Operator op1("op1", v1, v2, v3);
    ASSERT_TRUE(op1.applicable(s1));
    ASSERT_FALSE(op1.applicable(s2));
    ASSERT_TRUE(op1.applicable(s3));
}

TEST(OperatorTest, Application) {
    std::unordered_set<std::string> s1 = {"var1"};
    std::unordered_set<std::string> s2 = {"var2"};
    std::unordered_set<std::string> s3 = {"var1", "var2"};
    std::vector<std::string> v1 = {"var1"};
    std::vector<std::string> v2 = {"var2"};
    std::vector<std::string> v3 = {};
    std::vector<std::string> v4 = {"var2"};
    Operator op1("op1", v1, v2, v3);
    Operator op4("op1", v1, v2, v4);
    ASSERT_EQ(op1.apply(s1), s3);
    ASSERT_EQ(op4.apply(s1), s3);
}

TEST(OperatorTest, Successors) {
    std::unordered_set<std::string> s1 = {"var1"};
    std::unordered_set<std::string> s2 = {"var2"};
    std::unordered_set<std::string> s3 = {"var1", "var2"};
    std::vector<std::string> v1 = {"var1"};
    std::vector<std::string> v2 = {"var2"};
    std::vector<std::string> v3 = {};
    std::vector<std::string> v4 = {};
    Operator op1("op1", v1, v2, v3);
    Operator op2("op1", v1, v3, v4);
}

/*
TEST(OperatorTest, ApplicationTest2) {
    std::unordered_set<std::string> s1{"var1"};
    std::unordered_set<std::string> s2{"var2"};
    std::unordered_set<std::string> s3{"var1", "var2"};
    Operator op1("op1", {"var1"}, {"var2"}, {});
    EXPECT_THROW(op1.apply(s2), std::logic_error);
}

TEST(OperatorTest, ApplicationTest3) {
    std::unordered_set<std::string> s1{"var1"};
    std::unordered_set<std::string> s2{"var2"};
    std::unordered_set<std::string> s3{"var1", "var2"};
    Operator op4("op1", {"var1"}, {"var2"}, {"var2"});
    ASSERT_EQ(op4.apply(s1), s3);
}
*/


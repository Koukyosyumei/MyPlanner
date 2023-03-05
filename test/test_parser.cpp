#include <gtest/gtest.h>

#include <cassert>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#include "myplan/pddl/lisp_iterators.h"
#include "myplan/pddl/lisp_parser.h"
#include "myplan/pddl/parser.h"

TEST(parser_pddl_simple, NestedList) {
    std::string test = "(and (on ?x table) (true) (free ?x) )";
    nested_list<std::string> result = parse_nested_list({test});
    nested_list<std::string> test_result = {
        "and", {"on", "?x", "table"}, {"true"}, {"free", "?x"}};
    ASSERT_EQ(result, test_result);

    // parse_lisp_iterator(test);
}

TEST(parser_pddl_simple, KeywordSimple) {
    std::string test = "(:parameters )";
    LispIterator iter = parse_lisp_iterator({test});
    Keyword key = parse_keyword(iter.next());
    ASSERT_EQ(key.name, "parameters");
}

TEST(parser_pddl_simple, KeywordComplex) {
    std::string test = " ( :name)";
    LispIterator iter = parse_lisp_iterator({test});
    Keyword key = parse_keyword(iter.next());
    ASSERT_EQ(key.name, "name");
}

TEST(parser_pddl_simple, Requirements) {
    std::string test = "(:requirements :name :parameters :foo )";
    std::vector<std::string> test_names = {"name", "parameters", "foo"};
    LispIterator iter = parse_lisp_iterator({test});
    std::vector<Keyword> keys = parse_requirements_stmt(iter).keywords;
    ASSERT_EQ(iter.empty(), true);
    for (int i = 0; i < keys.size(); i++) {
        ASSERT_EQ(keys[i].name, test_names[i]);
    }
}

TEST(parser_pddl_simple, VariableNoTyping) {
    std::string test = " ( ?x)";
    LispIterator iter = parse_lisp_iterator({test});
    Variable key = parse_variable(iter.next());
    ASSERT_EQ(key.name, "?x");
    ASSERT_EQ(key.typed, false);
    ASSERT_EQ(key.types.size(), 0);
}

TEST(parser_pddl_simple, VariableTyping) {
    std::string test = " ( ?x - block)";
    LispIterator iter = parse_lisp_iterator({test});
    std::vector<Variable> vlist = parse_typed_var_list(iter);
    ASSERT_EQ(vlist.size(), 1);
    ASSERT_EQ(vlist[0].name, "?x");
    ASSERT_EQ(vlist[0].typed, true);
    ASSERT_EQ(vlist[0].types[0].name_, "block");
}

TEST(parser_pddl_simple, Parameters) {
    std::string test = "(:parameters ( ?x - block ?y - foo ?z - block  ))";
    std::vector<std::string> test_names = {"?x", "?y", "?z"};
    LispIterator iter = parse_lisp_iterator({test});
    std::vector<Variable> vars = parse_parameters(iter);
    int typed_cnt = 0;
    for (int i = 0; i < vars.size(); i++) {
        ASSERT_EQ(vars[i].name, test_names[i]);
        if (vars[i].typed) {
            typed_cnt++;
        }
    }
    ASSERT_EQ(typed_cnt, 3);
}


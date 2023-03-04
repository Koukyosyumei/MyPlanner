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

TEST(parser, NestedList) {
    std::string test = "(and (on ?x table) (true) (free ?x) )";
    nested_list<std::string> result = parse_nested_list({test});
    nested_list<std::string> test_result = {
        "and", {"on", "?x", "table"}, {"true"}, {"free", "?x"}};
    ASSERT_EQ(result, test_result);

    // parse_lisp_iterator(test);
}

TEST(parser, KeywordSimple){
    std::string test = "(:parameters )";
    LispIterator iter = parse_lisp_iterator({test});
    Keyword key = parse_keyword(iter.next());
    ASSERT_EQ(key.name, "parameters");
}

TEST(parser, KeywordComplex){
    std::string test = " ( :name)";
    LispIterator iter = parse_lisp_iterator({test});
    Keyword key = parse_keyword(iter.next());
    ASSERT_EQ(key.name, "name");
}

#include <cassert>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
//#include "myplan/pddl/lisp_iterators.h"
#include <gtest/gtest.h>

#include "myplan/pddl/lisp_parser.h"

TEST(parser, SimplePDDL) {
    std::string test = " ( and ( on ?x table ) ( true ) ( free ?x ) ) ";
    nested_list<std::string> result = parse_nested_list({test});
    nested_list<std::string> test_result = {"and", {"on", "?x", "table"}, {"true"}, {"free", "?x"}};
    ASSERT_EQ(result, test_result);

    // parse_lisp_iterator(test);
}

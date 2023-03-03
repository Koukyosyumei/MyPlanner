#include <string>
#include <iostream>
#include <cassert>
#include <fstream>
#include <vector>
#include <sstream>
#include "myplan/pddl/lisp_iterators.h"
#include "myplan/pddl/lisp_parser.h"
#include <gtest/gtest.h>

TEST(parser, SimplePDDL){
    std::string test = "(:parameters )";
    std::stringbuf test_buf(test.c_str());
    std::istream test_istream(&test_buf);
    parse_lisp_iterator(test_istream);
    ASSERT_EQ(1, 1);
}

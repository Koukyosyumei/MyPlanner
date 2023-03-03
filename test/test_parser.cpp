#include <string>
#include <iostream>
#include <cassert>
#include <fstream>
#include <vector>
#include <sstream>
//#include "myplan/pddl/lisp_iterators.h"
#include "myplan/pddl/lisp_parser.h"
#include <gtest/gtest.h>

TEST(parser, SimplePDDL){
    std::string test = "(:parameters )";
    //parse_lisp_iterator(test);
    ASSERT_EQ(1, 1);
}

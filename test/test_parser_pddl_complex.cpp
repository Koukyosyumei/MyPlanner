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

TEST(parser_pddl_comple, Action) {
    std::vector<std::string> test = {
        "(:action pick-up",
        "         :parameters (?x - block)",
        "         :precondition (and (clear ?x) (ontable ?x) (handempty))",
        "         :effect",
        "         (and (not (ontable ?x))",
        "               (not (clear ?x))",
        "               (not (handempty))",
        "               (holding ?x)))"};

    LispIterator iter = parse_lisp_iterator(test);
    ActionStmt action = parse_action_stmt(iter);
}

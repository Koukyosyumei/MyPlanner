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
    std::string test =
        "(:action pick-up :parameters (?x - block) :precondition (and (clear "
        "?x) (ontable ?x) (handempty)) :effect (and (not (ontable ?x)) (not "
        "(clear ?x)) (not (handempty)) (holding ?x)))";

    LispIterator iter = parse_lisp_iterator({test});
    ActionStmt action = parse_action_stmt(iter);
    ASSERT_EQ(action.name, "pick-up");
    ASSERT_EQ(action.parameters[0].name, "?x");
    ASSERT_EQ(action.parameters[0].types[0], "block");
    
    Formula pre = action.precond.formula;
    ASSERT_EQ(pre.key, "and");
    ASSERT_EQ(pre.children[0].key, "clear");
    ASSERT_EQ(pre.children[1].key, "ontable");
    ASSERT_EQ(pre.children[2].key, "handempty");
    ASSERT_EQ(pre.children[0].children[0].key, "?x");
    ASSERT_EQ(pre.children[1].children[0].key, "?x");
    ASSERT_EQ(pre.children[2].children.size(), 0);
   
    Formula eff = action.effect.formula;
    ASSERT_EQ(eff.key, "and");
    ASSERT_EQ(eff.children[0].key, "not");
    ASSERT_EQ(eff.children[1].key, "not");
    ASSERT_EQ(eff.children[2].key, "not");
    ASSERT_EQ(eff.children[3].key, "holding");
    ASSERT_EQ(eff.children[0].children[0].key, "ontable");
    for (Formula c : eff.children[0].children[0].children) {
        ASSERT_EQ(c.key, "?x");
    }
}


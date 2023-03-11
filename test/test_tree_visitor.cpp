#include <gtest/gtest.h>

#include <cassert>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <unordered_set>

#include "myplan/pddl/lisp_iterators.h"
#include "myplan/pddl/lisp_parser.h"
#include "myplan/pddl/parser.h"

TEST(parser_pddl_tree_visitor, PDDLVisitor) {
    std::string domain_input =
        "(define (domain BLOCKS) "
        "(:requirements :strips :typing) (:types block) (:predicates (on ?x - "
        "block ?y - block) (ontable ?x - block) (clear ?x - block) (handempty) "
        "(holding ?x - block) ) (:constants horst block1 block2 - block) "
        "(:action pick-up :parameters (?x - block) :precondition (and (clear "
        "?x) (ontable ?x) (handempty)) :effect (and (not (ontable ?x)) (not "
        "(clear ?x)) (not (handempty)) (holding ?x))) (:action put-down "
        ":parameters (?x - block) :precondition (holding ?x) :effect (and (not "
        "(holding ?x)) (clear ?x) (handempty) (ontable ?x))) (:action stack "
        ":parameters (?x - block ?y - block) :precondition (and (holding ?x) "
        "(clear ?y)) :effect (and (not (holding ?x)) (not (clear ?y)) (clear "
        "?x) (handempty) (on ?x ?y))) (:action unstack :parameters (?x - block "
        "?y - block) :precondition (and (on ?x ?y) (clear ?x) (handempty)) "
        ":effect (and (holding ?x) (clear ?y) (not (clear ?x)) (not "
        "(handempty)) (not (on ?x ?y)))))";

    std::string problem_input =
        "(define (problem BLOCKS-5-0) (:domain BLOCKS) (:objects B E A C D - "
        "block) (:INIT (CLEAR D) (CLEAR C) (ONTABLE D) (ONTABLE A) (ON C E) "
        "(ON E B) (ON B A) (HANDEMPTY)) (:goal (AND (ON A E) (ON E B) (ON B D) "
        "(ON D C))) )";

    Parser _parser = Parser("");
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;

    Domain _domain = _parser.parse_domain(false);
    Problem _problem = _parser.parse_problem(_domain, false);

    // test action set
    std::unordered_set<std::string> test_us = {"pick-up", "put-down", "stack",
                                               "unstack"};
    for (auto a : _domain.actions_dict) {
        ASSERT_TRUE(test_us.find(a.first) != test_us.end());
    }
}

#include <gtest/gtest.h>

#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <unordered_set>
#include <vector>

#include "myplan/pddl/lisp_iterators.h"
#include "myplan/pddl/lisp_parser.h"
#include "myplan/pddl/parser.h"

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
Domain* _domain;
Problem* _problem;

TEST(tree_visitor, ActionsSetAndParameters) {
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;
    _domain = _parser.parse_domain(false);
    //_problem = _parser.parse_problem(_domain, false);

    // test action set & parameters
    std::unordered_set<std::string> test_us = {"pick-up", "put-down", "stack",
                                               "unstack"};

    size_t tmp_cnt_0 = 0;
    for (auto a : _domain->actions_dict) {
        ASSERT_TRUE(test_us.find(a.first) != test_us.end());
        for (auto s : a.second.signature) {
            ASSERT_EQ(s.second[0]->name, "block");
            tmp_cnt_0++;
        }
    }
    ASSERT_EQ(tmp_cnt_0, 6);
}

TEST(tree_visitor, ActionPrecondition) {
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;
    _domain = _parser.parse_domain(false);
    //_problem = _parser.parse_problem(_domain, false);

    // test action precondition
    std::unordered_set<std::string> test_precond_names = {
        "clear", "ontable", "handempty", "holding",  "holding",
        "clear", "on",      "clear",     "handempty"};
    std::unordered_set<std::string> precond_names;
    for (auto ap : _domain->actions_dict) {
        Action a = ap.second;
        for (auto p : a.precondition) {
            ASSERT_TRUE(test_precond_names.find(p.name) !=
                        test_precond_names.end());
            precond_names.insert(p.name);
        }
    }
    ASSERT_EQ(precond_names.size(), test_precond_names.size());
}

TEST(tree_visitor, ActionEffect) {
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;
    _domain = _parser.parse_domain(false);
    _problem = _parser.parse_problem(_domain, false);

    // test action effects
    std::vector<std::string> all_effects_add = {
        "holding",   "clear", "handempty", "ontable", "clear",
        "handempty", "on",    "holding",   "clear"};
    std::vector<std::string> all_effects_del = {
        "ontable", "clear", "handempty", "holding", "clear",
        "holding", "clear", "handempty", "on"};
    size_t tmp_cnt_2 = 0;
    size_t tmp_cnt_3 = 0;
    for (auto ap : _domain->actions_dict) {
        Action a = ap.second;
        for (auto p : a.effect.addlist) {
            ASSERT_TRUE(std::find(all_effects_add.begin(),
                                  all_effects_add.end(),
                                  p.name) != all_effects_add.end());
            tmp_cnt_2++;
        }
        for (auto p : a.effect.dellist) {
            ASSERT_TRUE(std::find(all_effects_del.begin(),
                                  all_effects_del.end(),
                                  p.name) != all_effects_del.end());
            tmp_cnt_3++;
        }
    }
    ASSERT_EQ(tmp_cnt_2, all_effects_add.size());
    ASSERT_EQ(tmp_cnt_3, all_effects_del.size());
}

TEST(tree_visitor, DomainName) {
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;
    _domain = _parser.parse_domain(false);
    _problem = _parser.parse_problem(_domain, false);

    // test action domain name
    ASSERT_EQ(_domain->name, "blocks");
}

TEST(tree_visitor, Predicates) {
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;
    _domain = _parser.parse_domain(false);
    _problem = _parser.parse_problem(_domain, false);

    // test actino predicates
    std::unordered_set<std::string> test_pred_names = {"on", "ontable", "clear",
                                                       "handempty", "holding"};
    std::unordered_set<std::string> pred_names;
    for (auto p : _domain->predicates_dict) {
        pred_names.insert(p.first);
        for (auto s : p.second.signature) {
            ASSERT_EQ(s.second[0]->name, "block");
        }
    }
    ASSERT_EQ(pred_names, test_pred_names);
}

TEST(tree_visitor, Constatns) {
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;
    _domain = _parser.parse_domain(false);
    _problem = _parser.parse_problem(_domain, false);

    // test constants
    std::unordered_set<std::string> test_constants_key = {"horst", "block1",
                                                          "block2"};
    std::unordered_set<std::string> constants_key;
    for (auto c : _domain->constants) {
        constants_key.insert(c.first);
        ASSERT_EQ(c.second->name, "block");
    }
    ASSERT_EQ(constants_key, test_constants_key);
}

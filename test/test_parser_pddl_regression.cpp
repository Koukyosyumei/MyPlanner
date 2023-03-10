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

TEST(parser_pddl_regression, UntypedConstatns) {
    std::string domain_input =
        "(define (domain regression-test) (:predicates (the-predicate ?v)) "
        "(:constants x) (:action dummy-action :parameters () :precondition "
        "(and) :effect (and) ) )";

    std::string problem_input =
        "(define (problem regression-test-04) (:domain regression-test) (:init "
        "(the-predicate x)) (:goal (the-predicate x)))";

    Parser _parser = Parser("");
    _parser.domInput = domain_input;
    _parser.probInput = problem_input;

    Domain domain = _parser.parse_domain(false);
    Problem problem = _parser.parse_problem(domain, false);

    _parser.domInput = domain_input;
    domain = _parser.parse_domain(false);

    for (auto kv : domain.constants) {
        ASSERT_EQ(kv.first, "x");
    }
}

TEST(parser_pddl_regression, EmptyActions) {
    std::string domain_input =
        "(define (domain regression-test) (:predicates (trivial-goal)) )";

    Parser _parser = Parser("");
    _parser.domInput = domain_input;
    Domain domain = _parser.parse_domain(false);
    ASSERT_EQ(domain.actions.size(), 0);
}


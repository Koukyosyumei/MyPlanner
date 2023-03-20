#include <gtest/gtest.h>

#include <cassert>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
#include <string>
#include <vector>

#include "myplan/grounding.h"
#include "myplan/pddl/lisp_iterators.h"
#include "myplan/pddl/lisp_parser.h"
#include "myplan/pddl/parser.h"
#include "myplan/pddl/pddl.h"

using namespace std;

Action get_action(std::string name,
                  std::vector<pair<string, std::vector<Type*>>> signature,
                  std::vector<Predicate> preconditiona,
                  std::vector<Predicate> addlist,
                  std::vector<Predicate> dellist) {
    Effect effect;
    std::set<Predicate> addlist_set(addlist.begin(), addlist.end());
    effect.addlist = addlist_set;
    std::set<Predicate> dellist_set(dellist.begin(), dellist.end());
    effect.dellist = dellist_set;
    return Action(name, signature, preconditiona, effect);
}

TEST(grounding, Statics1) {
    Type type_object = Type("object", nullptr);
    Type type_vehicle = Type("vehicle", &type_object);
    Type type_car = Type("car", &type_vehicle);
    Type type_city = Type("city", &type_object);
    Type type_country = Type("country", &type_object);
    std::unordered_map<std::string, Type*> types{
        {"object", &type_object},
        {"car", &type_car},
        {"city", &type_city},
        {"country", &type_country},
    };
    std::vector<pair<std::string, std::vector<Type*>>> sig1 = {
        {"car", {types["car"]}}, {"dest", {types["city"]}}};

    std::vector<Predicate> predicate_orig = {Predicate("at", sig1)};
    std::vector<Predicate> predicate_dest = {
        Predicate("at", {{"car", {types["car"]}}, {"orig", {types["city"]}}})};
    std::vector<Predicate> predicate_in = {Predicate(
        "in", {{"city", {types["city"]}}, {"country", {types["country"]}}})};

    std::vector<Action> action_drive_car = {
        get_action("DRIVE_CAR",
                   {{"car", {types["car"]}},
                    {"loc-orig", {types["city"]}},
                    {"loc-dest", {types["city"]}}},
                   predicate_orig, predicate_dest, predicate_orig)};

    std::vector<std::string> gs1 = _get_statics(predicate_in, action_drive_car);
    ASSERT_TRUE(std::find(gs1.begin(), gs1.end(), "in") != gs1.end());
    std::vector<std::string> gs2 =
        _get_statics(predicate_dest, action_drive_car);
    ASSERT_TRUE(std::find(gs2.begin(), gs2.end(), "dest") == gs2.end());
    std::vector<std::string> gs3 =
        _get_statics(predicate_orig, action_drive_car);
    ASSERT_TRUE(std::find(gs3.begin(), gs3.end(), "orig") == gs3.end());
}

TEST(grounding, Statics2) {
    Type type_object = Type("object", nullptr);
    std::vector<pair<std::string, std::vector<Type*>>> empty_signature;
    Predicate predicate_a = Predicate("a", empty_signature);
    Predicate predicate_b = Predicate("b", empty_signature);
    Action the_action = get_action("the_action", empty_signature, {predicate_a},
                                   {predicate_b}, {});
    std::vector<std::string> statics =
        _get_statics({predicate_a, predicate_b}, {the_action});
    ASSERT_TRUE((std::find(statics.begin(), statics.end(), predicate_a.name) !=
                 statics.end()) &&
                (std::find(statics.begin(), statics.end(), predicate_b.name) ==
                 statics.end()));
}

TEST(grounding, Map1) {
    Type type_object = Type("object", nullptr);
    Type type_vehicle = Type("vehicle", &type_object);
    Type type_car = Type("car", &type_vehicle);
    Type type_truck = Type("truck", &type_vehicle);
    Type type_city = Type("city", &type_object);

    std::unordered_map<std::string, Type*> objects{
        {"red_car", &type_car},      {"green_car", &type_car},
        {"blue_truck", &type_truck}, {"motorbike", &type_vehicle},
        {"freiburg", &type_city},    {"basel", &type_city},
    };

    std::unordered_map<std::string, std::vector<std::string>> type_map =
        _create_type_map(objects);

    std::vector<pair<std::string, std::vector<std::string>>> expected{
        {"red_car", type_map[type_car.name]},
        {"green_car", type_map[type_car.name]},
        {"blue_truck", type_map[type_truck.name]},
        {"red_car", type_map[type_vehicle.name]},
        {"green_car", type_map[type_vehicle.name]},
        {"blue_truck", type_map[type_vehicle.name]},
        {"motorbike", type_map[type_vehicle.name]},
        {"freiburg", type_map[type_city.name]},
        {"basel", type_map[type_city.name]},
        {"green_car", type_map[type_object.name]},
        {"motorbike", type_map[type_object.name]},
        {"basel", type_map[type_object.name]}};

    for (auto e : expected) {
        ASSERT_TRUE(std::find(e.second.begin(), e.second.end(), e.first) !=
                    e.second.end());
    }
}

TEST(grounding, Map2) {
    Type type_object = Type("object", nullptr);
    std::unordered_map<std::string, Type*> objects{{"object1", &type_object}};
    std::unordered_map<std::string, std::vector<std::string>> type_map =
        _create_type_map(objects);
    ASSERT_TRUE(std::find(type_map[type_object.name].begin(),
                          type_map[type_object.name].end(),
                          "object1") != type_map[type_object.name].end());
}

TEST(grounding, Facts) {
    Operator op1 = Operator("op1", {"var1"}, {}, {"var3"});
    Operator op2 = Operator("op2", {"var2"}, {"var3"}, {});
    Operator op3 = Operator("op3", {}, {"var1"}, {"var4"});
    std::vector<Operator> ops = {op1, op2, op3};
    std::unordered_set<std::string> test_facts = {"var1", "var2", "var3",
                                                  "var4"};
    ASSERT_EQ(test_facts, _collect_facts(ops));
}

TEST(grounding, GetGroundedString) {
    std::string grounded_string = "(DRIVE-CAR ford freiburg berlin )";
    ASSERT_EQ(_get_grounded_string("DRIVE-CAR", {"ford", "freiburg", "berlin"}),
              grounded_string);
}

Problem parse_problem(Parser& parser, std::string dom, std::string prob) {
    parser.domInput = dom;
    parser.probInput = prob;
    Domain domain = parser.parse_domain(false);
    return *parser.parse_problem(domain, false);
}

bool starts_with(const std::string& str, const std::string& prefix) {
    if (str.size() < prefix.size()) {
        return false;
    }
    for (std::size_t i = 0; i < prefix.size(); ++i) {
        if (str[i] != prefix[i]) {
            return false;
        }
    }
    return true;
}

bool compare_operators(const std::vector<Operator>& operators1,
                       const std::vector<Operator>& operators2) {
    for (const auto& op1 : operators1) {
        bool found_match = false;
        for (const auto& op2 : operators2) {
            if (op1 == op2) {
                found_match = true;
                break;
            }
        }
        if (!found_match) {
            return false;
        }
    }
    return true;
}

TEST(grounding, Operators) {
    Type type_object = Type("object", nullptr);
    Type type_vehicle = Type("vehicle", &type_object);
    Type type_car = Type("car", &type_vehicle);
    Type type_truck = Type("truck", &type_vehicle);
    Type type_city = Type("city", &type_object);
    Type type_country = Type("country", &type_object);
    Type type_my_car = Type("my_car", &type_vehicle);
    Type type_color = Type("color", &type_object);

    std::unordered_map<std::string, Type*> types{
        {"object", &type_object}, {"vehicle", &type_vehicle},
        {"car", &type_car},       {"truck", &type_truck},
        {"city", &type_city},     {"country", &type_country},
        {"my_car", &type_my_car}, {"color", &type_color},
    };

    std::unordered_map<std::string, Type*> objects{
        {"red_car", types["car"]},      {"green_car", types["car"]},
        {"blue_truck", types["truck"]}, {"freiburg", types["city"]},
        {"basel", types["city"]},       {"green", types["color"]},
        {"yellow", types["color"]},
    };

    std::vector<Predicate> initial_state = {
        Predicate("at",
                  {{"red_car", {types["car"]}}, {"freiburg", {types["city"]}}}),
        Predicate("at",
                  {{"green_car", {types["car"]}}, {"basel", {types["city"]}}}),
        Predicate("at", {{"blue_truck", {types["truck"]}},
                         {"freiburg", {types["city"]}}}),
        Predicate("at", {{"yellow_truck", {types["truck"]}},
                         {"basel", {types["city"]}}}),
    };

    std::vector<Predicate> goal_state = {
        Predicate("at",
                  {{"red_car", {types["car"]}}, {"basel", {types["city"]}}}),
        Predicate("at", {{"green_car", {types["car"]}},
                         {"freiburg", {types["city"]}}}),
        Predicate("at", {{"blue_truck", {types["truck"]}},
                         {"basel", {types["city"]}}}),
        Predicate("at", {{"yellow_truck", {types["truck"]}},
                         {"freiburg", {types["city"]}}}),
    };

    //# predicates:
    Predicate predicate_car_orig =
        Predicate("at", {{"car", {types["car"]}}, {"orig", {types["city"]}}});
    Predicate predicate_car_dest =
        Predicate("at", {{"car", {types["car"]}}, {"dest", {types["city"]}}});
    Predicate predicate_veh_orig = Predicate(
        "at", {{"vehicle", {types["vehicle"]}}, {"orig", {types["city"]}}});
    Predicate predicate_veh_dest = Predicate(
        "at", {{"vehicle", {types["vehicle"]}}, {"dest", {types["city"]}}});
    Predicate predicate_in =
        Predicate("in", {{"car", {types["car"]}}, {"in", {types["city"]}}});
    //# predicate which does not occur in any operator:
    Predicate predicate_car_color = Predicate(
        "car_color", {{"car", {types["car"]}}, {"color", {types["color"]}}});

    std::unordered_map<std::string, Predicate> predicates = {
        {"at", predicate_car_dest},
        {"in", predicate_in},
        {"car_color", predicate_car_color}};

    Action action_drive_car = get_action(
        "DRIVE-CAR",
        {{"car", {types["car"]}},
         {"orig", {types["city"]}},
         {"dest", {types["city"]}}},
        {predicate_car_dest}, {predicate_car_orig}, {predicate_car_dest});

    std::unordered_map<std::string, Action> actions = {
        {"drive-car", action_drive_car}};

    Domain standard_domain = Domain("test_domain_statics", types, {}, {});
    standard_domain.predicates_dict = predicates;
    standard_domain.actions_dict = actions;

    Problem standard_problem = Problem("test_problem_statics", &standard_domain,
                                       objects, initial_state, goal_state);

    //    # action with signature with 2 types
    Action action_drive_vehicle = get_action(
        "DRIVE-VEHICLE",
        {
            {"vehicle", {types["car"], types["truck"]}},
            {"orig", {types["city"]}},
            {"dest", {types["city"]}},
        },
        {predicate_veh_orig}, {predicate_veh_dest}, {predicate_veh_orig});

    // # action with predicate in add & delete list
    Action action_add_delete =
        get_action("STAY", {{"car", {types["car"]}}, {"in", {types["city"]}}},
                   {predicate_in}, {predicate_in}, {predicate_in});

    // # action with constant input
    Action action_constant = get_action(
        "CONSTANT-ACTION",
        {{"my_car", {types["my_car"]}}, {"city", {types["city"]}}}, {},
        {Predicate("in", {{"basel", {types["city"]}},
                          {"switzerland", {types["country"]}}})},
        {});

    // # action with only delete effects
    Action action_only_delete =
        get_action("LEAVE", {{"car", {types["car"]}}, {"in", {types["city"]}}},
                   {predicate_in}, {}, {predicate_in});

    // # action with delete effect which does not occur in
    // precondition
    Action action_delete =
        get_action("DELETE",
                   {{"car", {types["car"]}},
                    {"orig", {types["city"]}},
                    {"dest", {types["city"]}}},
                   {}, {predicate_car_orig}, {predicate_car_dest});

    std::unordered_map<std::string, std::vector<std::string>> type_map =
        _create_type_map(objects);

    std::unordered_set<std::string> grounded_initial_state =
        _get_partial_state(initial_state);

    std::vector<Operator> grounded_drive_car =
        _ground_action(action_drive_car, type_map, {}, grounded_initial_state);
    std::vector<Operator> grounded_drive_vehicle = _ground_action(
        action_drive_vehicle, type_map, {}, grounded_initial_state);
    std::vector<Operator> grounded_add_delete =
        _ground_action(action_add_delete, type_map, {}, grounded_initial_state);
    std::vector<Operator> grounded_only_delete = _ground_action(
        action_only_delete, type_map, {}, grounded_initial_state);
    std::vector<Operator> grounded_delete =
        _ground_action(action_delete, type_map, {}, grounded_initial_state);

    Domain domain = Domain("test_domain", types, {}, {}, {});
    domain.predicates_dict = {
        {"in", Predicate("in", {{"city", {types["city"]}},
                                {"country", {types["country"]}}})}};
    domain.actions_dict = {{"action-constant", action_constant}};
    domain.constants = {{"my_car", types["car"]}};
    Problem problem =
        Problem("test_problem", &domain, objects, initial_state, goal_state);

    Task task = ground(problem);

    std::unordered_map<std::string, std::vector<Operator>> expected = {
        {"(DRIVE-CAR red_car freiburg basel )", grounded_drive_car},
        {"(DRIVE-VEHICLE blue_truck freiburg basel )", grounded_drive_vehicle},
        {"(STAY red_car freiburg )", grounded_add_delete},
        {"(LEAVE red_car freiburg )", grounded_only_delete},
        {"(DELETE red_car freiburg basel )", grounded_delete},
    };

    for (auto e : expected) {
        bool tmp_flag = false;
        for (auto op : e.second) {
            // std::cout << e.first << "," << op.name << std::endl;
            if (op.name == e.first) {
                tmp_flag = true;
            }
        }
        // std::cout << std::endl;
        ASSERT_TRUE(tmp_flag);
    }

    task = ground(standard_problem);

    for (std::string var : task.facts) {
        ASSERT_FALSE(starts_with(var, "car_color"));
    }

    for (Operator op : task.operators) {
        for (std::string pre : op.preconditions) {
            ASSERT_FALSE(starts_with(pre, "car_color"));
        }
        for (std::string add : op.add_effects) {
            ASSERT_FALSE(starts_with(add, "car_color"));
        }
        for (std::string dee : op.del_effects) {
            ASSERT_FALSE(starts_with(dee, "car_color"));
        }
    }

    Parser parser = Parser("");

    std::string prob_05 =
        "(define (problem regression-test-05) (:domain regression-test) "
        "(:objects y - object) (:init) (:goal (the-predicate x y)))";
    std::string dom_05 =
        "(define (domain regression-test) (:requirements :typing) "
        "(:predicates (the-predicate ?v1 "
        "?v2 - object)) (:constants x - object) (:action theaction :parameters "
        "(?x - object) :precondition (and) :effect (the-predicate x ?x) ) )";
    std::string prob_06 =
        "(define (problem regression-test-06) (:domain regression-test) "
        "(:objects y - object) (:init) (:goal (the-predicate y y)))";
    std::string prob_07 = prob_06;
    std::string dom_06 =
        "(define (domain regression-test) (:requirements :typing) (:predicates "
        "(the-predicate ?v1 ?v2 - object)) (:constants x - object) (:action "
        "theaction :parameters (?x - object) :precondition (and) :effect "
        "(the-predicate x ?x) ) )";
    std::string dom_07 =
        "(define (domain regression-test) (:requirements :typing) (:predicates "
        "(the-predicate ?v1 ?v2 - object)) (:constants y - object) (:action "
        "theaction :parameters (?x - object) :precondition (and) :effect "
        "(the-predicate y ?x) ) )";
    std::string prob_08 = prob_05;
    std::string dom_08 =
        "(define (domain regression-test) (:requirements :typing) (:predicates "
        "(the-predicate ?v1 ?v2 - object)) (:constants x - object) (:action "
        "theaction :parameters (?z - object) :precondition (and) :effect "
        "(the-predicate x ?z) ) )";

    Problem parsed_problem5 = parse_problem(parser, dom_05, prob_05);
    Problem parsed_problem6 = parse_problem(parser, dom_06, prob_06);
    Problem parsed_problem7 = parse_problem(parser, dom_07, prob_07);
    Problem parsed_problem8 = parse_problem(parser, dom_08, prob_08);

    type_object = Type("object", nullptr);
    types = {{"object", &type_object}};
    predicates = {{"the_predicate",
                   Predicate("the-predicate",
                             {{"v1", {&type_object}}, {"v2", {&type_object}}})}};
    std::unordered_map<std::string, Type*> constants = {{"x", &type_object}};
    actions = {
        {"theaction",
         get_action("theaction", {{"?x", {&type_object}}}, {},
                    {Predicate("the-predicate",
                               {{"x", {&type_object}}, {"?x", {&type_object}}})},
                    {})}};
    domain = Domain("regression-test", types, {}, {}, {});
    domain.predicates_dict = predicates;
    domain.actions_dict = actions;
    domain.constants = constants;
    std::unordered_map<std::string, Type*> tmp_objects = {{"y", &type_object}};
    std::vector<Predicate> tmp_init;
    Problem problem5 =
        Problem("regression-test-05", &domain, tmp_objects, tmp_init,
                {Predicate("the-predicate",
                           {{"x", {&type_object}}, {"y", {&type_object}}})});
    Problem problem6 =
        Problem("regression-test-06", &domain, tmp_objects, tmp_init,
                {Predicate("the-predicate",
                           {{"y", {&type_object}}, {"y", {&type_object}}})});

    Task parsed_task5 = ground(parsed_problem5);
    Task coded_task5 = ground(problem5);
    Task parsed_task6 = ground(parsed_problem6);
    Task coded_task6 = ground(problem6);
    Task parsed_task7 = ground(parsed_problem7);
    Task parsed_task8 = ground(parsed_problem8);

    std::vector<std::vector<Operator>> operators1 = {
        parsed_task5.operators, parsed_task6.operators, parsed_task5.operators,
        parsed_task5.operators, parsed_task5.operators};
    std::vector<std::vector<Operator>> operators2 = {
        coded_task5.operators, coded_task6.operators, coded_task6.operators,
        parsed_task7.operators, parsed_task8.operators};
    std::vector<bool> expected_results = {true, true, false, false, true};

    for (int i = 0; i < expected_results.size(); i++) {
        ASSERT_EQ(compare_operators(operators1[i], operators2[i]),
                  expected_results[i]);
    }

    std::string dom_pddl_1 =
        "(define (domain dom) (:requirements :typing) (:predicates (ok ?v - "
        "object)) (:action theaction :parameters (?x - object) :precondition ";
    std::string dom_pddl_2 = " :effect ";
    std::string dom_pddl_3 = " ) )";
    std::string prob_pddl =
        "(define (problem prob) (:domain dom) (:objects y - object) (:init) "
        "(:goal (ok y)))";

    std::vector<std::string> tests_pre_in = {"(and)",         "(and)",
                                             "(and)",         "(and (ok ?x))",
                                             "(and (ok ?x))", "(and (ok ?x))"};
    std::vector<std::string> tests_eff_in = {
        "(ok ?x)", "(and (not (ok ?x)))", "(and (ok ?x) (not (ok ?x)))",
        "(ok ?x)", "(and (not (ok ?x)))", "(and (ok ?x) (not (ok ?x)))"};
    std::vector<std::set<std::string>> tests_pre_exp = {
        {}, {}, {}, {"(ok y )"}, {"(ok y )"}, {"(ok y )"}};
    std::vector<std::set<std::string>> tests_add_exp = {
        {"(ok y )"}, {}, {"(ok y )"}, {}, {}, {}};
    std::vector<std::set<std::string>> tests_del_exp = {{}, {"(ok y )"}, {},
                                                        {}, {"(ok y )"}, {}};

    for (int i = 0; i < 6; i++) {
        std::string pre_in = tests_pre_in[i];
        std::string eff_in = tests_eff_in[i];
        std::string dom =
            dom_pddl_1 + pre_in + dom_pddl_2 + eff_in + dom_pddl_3;
        problem = parse_problem(parser, dom, prob_pddl);
        domain = *(problem.domain);
        std::vector<Action> actions;
        for (auto ap : problem.domain->actions_dict) {
            actions.push_back(ap.second);
        }
        std::vector<Predicate> predicates_vec;
        for (auto pp : problem.domain->predicates_dict) {
            predicates_vec.push_back(pp.second);
        }

        objects = problem.objects;
        for (auto c : domain.constants) {
            objects.insert(c);
        }

        std::vector<std::string> statics =
            _get_statics(predicates_vec, actions);
        type_map = _create_type_map(objects);
        std::unordered_set<std::string> init = _get_partial_state(problem.init);

        std::vector<Operator> operators =
            _ground_actions(actions, type_map, statics, init);

        ASSERT_EQ(operators.size(), 1);
        ASSERT_EQ(operators[0].preconditions, tests_pre_exp[i]);
        ASSERT_EQ(operators[0].add_effects, tests_add_exp[i]);
        ASSERT_EQ(operators[0].del_effects, tests_del_exp[i]);
    }
}


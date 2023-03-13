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
                  std::vector<pair<string, std::vector<Type>>> signature,
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
    std::unordered_map<std::string, Type> types{
        {"object", type_object},
        {"car", type_car},
        {"city", type_city},
        {"country", type_country},
    };

    std::vector<Predicate> predicate_orig = {
        Predicate("at", {{"car", {types["car"]}}, {"dest", {types["city"]}}})};
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
    std::vector<pair<std::string, std::vector<Type>>> empty_signature;
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

    std::unordered_map<std::string, Type> objects{
        {"red_car", type_car},      {"green_car", type_car},
        {"blue_truck", type_truck}, {"motorbike", type_vehicle},
        {"freiburg", type_city},    {"basel", type_city},
    };

    std::unordered_map<Type, std::vector<std::string>> type_map =
        _create_type_map(objects);

    std::vector<pair<std::string, std::vector<std::string>>> expected{
        {"red_car", type_map[type_car]},
        {"green_car", type_map[type_car]},
        {"blue_truck", type_map[type_truck]},
        {"red_car", type_map[type_vehicle]},
        {"green_car", type_map[type_vehicle]},
        {"blue_truck", type_map[type_vehicle]},
        {"motorbike", type_map[type_vehicle]},
        {"freiburg", type_map[type_city]},
        {"basel", type_map[type_city]},
        {"green_car", type_map[type_object]},
        {"motorbike", type_map[type_object]},
        {"basel", type_map[type_object]}};

    for (auto e : expected) {
        ASSERT_TRUE(std::find(e.second.begin(), e.second.end(), e.first) !=
                    e.second.end());
    }
}

TEST(grounding, Map2) {
    Type type_object = Type("object", nullptr);
    std::unordered_map<std::string, Type> objects{{"object1", type_object}};
    std::unordered_map<Type, std::vector<std::string>> type_map =
        _create_type_map(objects);
    ASSERT_TRUE(std::find(type_map[type_object].begin(),
                          type_map[type_object].end(),
                          "object1") != type_map[type_object].end());
}

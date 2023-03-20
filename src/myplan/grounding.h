#pragma once
#include <algorithm>
#include <functional>
#include <iterator>
#include <map>
#include <memory>
#include <ranges>
#include <regex>
#include <string>
#include <unordered_set>
#include <vector>

#include "pddl/pddl.h"
#include "pddl/tree_visitor.h"
#include "pddl/visitable.h"
#include "task.h"

using namespace std;

inline std::vector<Operator> relevance_analysis(
    std::vector<Operator>& operators, std::unordered_set<std::string>& goals,
    bool verbose_logging = false) {
    /* This implements a relevance analysis of operators.
     * We start with all facts within the goal and iteratively compute
     * a fixpoint of all relevant effects.
     * Relevant effects are those that contribute to a valid path to the goal.
     */
    bool debug = true;
    std::set<std::string> relevant_facts;
    std::set<std::string> old_relevant_facts;
    std::unordered_set<Predicate> debug_pruned_op;
    bool changed = true;
    for (const auto& goal : goals) {
        relevant_facts.insert(goal);
    }

    while (changed) {
        // set next relevant facts to current facts
        // if we do not add anything in the following for loop
        // we have already found a fixpoint
        old_relevant_facts = relevant_facts;
        // compute cut of relevant facts with effects of all operators
        for (const auto& op : operators) {
            std::set<std::string> new_addlist;
            std::set_intersection(
                op.add_effects.begin(), op.add_effects.end(),
                relevant_facts.begin(), relevant_facts.end(),
                std::inserter(new_addlist, new_addlist.end()));
            std::set<std::string> new_dellist;
            std::set_intersection(
                op.del_effects.begin(), op.del_effects.end(),
                relevant_facts.begin(), relevant_facts.end(),
                std::inserter(new_dellist, new_dellist.end()));
            if (!new_addlist.empty() || !new_dellist.empty()) {
                // add all preconditions to relevant facts
                relevant_facts.insert(op.preconditions.begin(),
                                      op.preconditions.end());
            }
        }
        changed = old_relevant_facts != relevant_facts;
    }

    // delete all irrelevant effects
    std::unordered_set<Operator> del_operators;
    for (auto& op : operators) {
        // calculate new effects
        std::set<std::string> new_addlist;
        std::set_intersection(op.add_effects.begin(), op.add_effects.end(),
                              relevant_facts.begin(), relevant_facts.end(),
                              std::inserter(new_addlist, new_addlist.end()));
        std::set<std::string> new_dellist;
        std::set_intersection(op.del_effects.begin(), op.del_effects.end(),
                              relevant_facts.begin(), relevant_facts.end(),
                              std::inserter(new_dellist, new_dellist.end()));
        // if (debug) {
        //     debug_pruned_op.insert(op.add_effects.begin(),
        //                            op.add_effects.end());
        //     debug_pruned_op.insert(op.del_effects.begin(),
        //                            op.del_effects.end());
        // }
        //  store new effects
        op.add_effects = new_addlist;
        op.del_effects = new_dellist;
        if (new_addlist.empty() && new_dellist.empty()) {
            // if (verbose_logging) {
            //     std::cout << "Relevance analysis removed oparator " <<
            //     op.name
            //               << std::endl;
            // }
            del_operators.insert(op);
        }
    }
    // if (debug) {
    //    std::cout << "Relevance analysis removed " << debug_pruned_op.size()
    //              << " facts" << std::endl;
    //}
    // remove completely irrelevant operators
    std::vector<Operator> new_operators;
    new_operators.reserve(operators.size() - del_operators.size());
    for (const auto& op : operators) {
        if (!del_operators.count(op)) {
            new_operators.push_back(op);
        }
    }
    return new_operators;
}

inline std::vector<std::string> _get_statics(
    const std::vector<Predicate>& predicates,
    const std::vector<Action>& actions) {
    std::vector<std::unordered_set<Predicate>> effects;
    std::transform(actions.begin(), actions.end(), back_inserter(effects),
                   [](const Action& a) {
                       return std::unordered_set<Predicate>{
                           a.effect.addlist.begin(), a.effect.addlist.end()};
                   });
    std::transform(actions.begin(), actions.end(), back_inserter(effects),
                   [](const Action& a) {
                       return std::unordered_set<Predicate>{
                           a.effect.dellist.begin(), a.effect.dellist.end()};
                   });
    std::unordered_set<Predicate> flattened_effects;
    for (const auto& es : effects) {
        flattened_effects.insert(es.begin(), es.end());
    }

    auto is_static = [&](const Predicate& pred) {
        return std::none_of(
            flattened_effects.begin(), flattened_effects.end(),
            [&](const Predicate& eff) { return pred.name == eff.name; });
    };

    std::vector<std::string> statics;
    for (const Predicate& pred : predicates) {
        if (is_static(pred)) {
            statics.push_back(pred.name);
        }
    }
    return statics;
}

/*
inline std::unordered_map<Type, std::vector<std::string>> _create_type_map(
    const std::unordered_map<std::string, Type>& objects) {
    std::unordered_map<Type, std::vector<std::string>> type_map;

    // for every type we append the corresponding object
    std::cout << "**" << std::endl;
    for (const auto& [object_name, object_type] : objects) {
        std::cout << 1 << std::endl;
        Type* parent_type = object_type.parent;
        while (parent_type != nullptr) {
            std::cout << 2 << std::endl;
            if (type_map.find(*parent_type) != type_map.end()) {
                type_map[object_type].push_back(object_name);
            } else {
                type_map.insert({*parent_type, {object_name}});
            }
            //type_map[*parent_type].push_back(object_name);
            std::cout << 3 << std::endl;
            parent_type = parent_type->parent;
        }
        type_map[object_type].push_back(object_name);
    }
    std::cout << "--" << std::endl;

    // TODO vectors in map should be ordered lists
    return type_map;
}
*/

inline std::unordered_map<std::string, std::vector<std::string>>
_create_type_map(std::unordered_map<std::string, Type*>& objects) {
    std::cout << "obkects is " << std::endl;
    for (auto& kv : objects) {
        std::cout << kv.first << " " << kv.second->name << std::endl;
    }

    std::cout << "888888" << std::endl;
    for (auto& kv : objects) {
        std::cout << kv.second->name << " ";
        if (kv.second->parent != nullptr) {
            std::cout << " " << kv.second->parent->name;
        }
        std::cout << std::endl;
    }
    std::cout << "888888" << std::endl;

    std::unordered_map<std::string, std::vector<std::string>> type_map;
    for (auto& [object_name, object_type] : objects) {
        // std::string object_name = kv.first;
        // Type object_type = kv.second;
        Type* parent_type = object_type->parent;
        std::cout << "aa--- " << object_name << std::endl;
        while (true) {
            std::cout << 1 << std::endl;
            // if (object_type == nullptr) {
            //     std::cout << "null!!!!!" << std::endl;
            // }
            std::cout << "?????--- " << object_name << " " << object_type->name
                      << std::endl;
            if (type_map.find(object_type->name) != type_map.end()) {
                type_map[object_type->name].push_back(object_name);
            } else {
                type_map.insert({object_type->name, {object_name}});
            }
            std::cout << 2 << std::endl;
            auto next_parent_type = object_type->parent;
            std::cout << 3 << std::endl;
            auto next_object_type = parent_type;
            std::cout << 4 << std::endl;
            object_type = next_object_type;
            parent_type = next_parent_type;
            // std::cout << parent_type->name << " " << object_type.name
            //           << std::endl;
            std::cout << "---" << std::endl;
            if (parent_type == nullptr) {
                break;
            }
        }
    }
    std::cout << "successuflyy construct type_map" << std::endl;
    return type_map;
}

inline std::unordered_set<std::string> _collect_facts(
    std::vector<Operator>& operators) {
    /*
    Collect all facts from grounded operators (precondition, add
    effects and delete effects).
    */
    std::unordered_set<std::string> facts;
    for (Operator& op : operators) {
        for (std::string p : op.preconditions) {
            facts.insert(p);
        }
        for (std::string p : op.add_effects) {
            facts.insert(p);
        }
        for (std::string p : op.del_effects) {
            facts.insert(p);
        }
    }
    return facts;
}

// Helper function to get grounded string
std::string _get_grounded_string(std::string name,
                                 std::vector<std::string> args) {
    std::string args_string = "";
    if (!args.empty()) {
        args_string += " ";
        for (auto arg : args) {
            args_string += arg + " ";
        }
    }
    return "(" + name + args_string + ")";
}

// Helper function to ground atom
std::string _ground_atom(
    const Predicate& atom,
    const std::unordered_map<std::string, std::string>& assignment) {
    std::vector<std::string> names;
    for (auto [name, types] : atom.signature) {
        if (assignment.count(name)) {
            names.push_back(assignment.at(name));
        } else {
            names.push_back(name);
        }
    }
    return _get_grounded_string(atom.name, names);
}

// Helper function to ground atoms
inline std::unordered_set<std::string> _ground_atoms(
    const set<Predicate>& atoms,
    const std::unordered_map<std::string, std::string>& assignment) {
    std::unordered_set<std::string> grounded_atoms;
    for (auto atom : atoms) {
        grounded_atoms.insert(_ground_atom(atom, assignment));
    }
    return grounded_atoms;
}

// Helper function to get fact string
inline std::string _get_fact(const Predicate& atom) {
    std::vector<std::string> args;
    for (auto [name, types] : atom.signature) {
        args.push_back(name);
    }
    return _get_grounded_string(atom.name, args);
}

// Helper function to get partial state
inline unordered_set<string> _get_partial_state(
    const vector<Predicate>& atoms) {
    unordered_set<string> partial_state;
    for (auto atom : atoms) {
        partial_state.insert(_get_fact(atom));
    }
    return partial_state;
}

inline bool _find_pred_in_init(string pred_name, string param, int sig_pos,
                               std::unordered_set<std::string> init) {
    /*
    This method is used to check whether an instantiation of the predicate
    denoted by pred_name with the parameter param at position sig_pos is
    present in the initial condition.
    Useful to evaluate static preconditions efficiently.
    */
    regex match_init;
    if (sig_pos == 0) {
        match_init = regex("\\(" + pred_name + " " + param + ".*");
    } else {
        string reg_ex = "\\(" + pred_name + "\\s+";
        for (int i = 0; i < sig_pos; i++) {
            reg_ex += "[\\w\\d-]+\\s+";
        }
        reg_ex += param + ".*";
        match_init = regex(reg_ex);
    }
    for (string str : init) {
        if (regex_match(str, match_init)) {
            return true;
        }
    }
    return false;
}

template <typename T>
inline std::vector<std::vector<T>> product(
    const std::vector<std::vector<T>>& iterables) {
    std::vector<std::vector<T>> results;

    for (std::vector<T> vec : iterables) {
        if (vec.size() == 0) {
            return results;
        }
    }

    if (iterables.empty()) {
        results.push_back({});
        return results;
    }
    std::vector<size_t> counters(iterables.size());
    std::vector<size_t> sizes(iterables.size());
    for (size_t i = 0; i < iterables.size(); ++i) {
        sizes[i] = iterables[i].size();
    }
    while (true) {
        std::vector<T> result;
        for (size_t i = 0; i < iterables.size(); ++i) {
            result.push_back(iterables[i][counters[i]]);
        }
        results.push_back(result);
        size_t j = iterables.size() - 1;
        while (j != -1) {
            counters[j] += 1;
            if (counters[j] == sizes[j]) {
                counters[j] = 0;
                j -= 1;
            } else {
                break;
            }
        }
        if (j == -1) {
            break;
        }
    }
    return results;
}

inline Operator* _create_operator(
    Action* action, std::unordered_map<std::string, std::string>& assignment,
    std::unordered_set<std::string>& statics,
    std::unordered_set<std::string>& init) {
    std::unordered_set<std::string> precondition_facts;
    for (Predicate precondition : action->precondition) {
        std::string fact = _ground_atom(precondition, assignment);
        std::string predicate_name = precondition.name;
        if (statics.count(predicate_name) > 0) {
            // Check if this precondition is false in the initial state
            if (init.count(fact) == 0) {
                // This precondition is never true -> Don't add operator
                return nullptr;
            }
        } else {
            // This precondition is not always true -> Add it
            precondition_facts.insert(fact);
        }
    }

    std::unordered_set<std::string> add_effects =
        _ground_atoms(action->effect.addlist, assignment);
    std::unordered_set<std::string> del_effects =
        _ground_atoms(action->effect.dellist, assignment);
    // If the same fact is added and deleted by an operator the STRIPS formalism
    // adds it.
    for (std::string fact : add_effects) {
        if (del_effects.count(fact) > 0) {
            del_effects.erase(fact);
        }
    }
    // If a fact is present in the precondition, we do not have to add it.
    // Note that if a fact is in the delete and in the add effects,
    // it has already been deleted in the previous step.
    for (std::string fact : precondition_facts) {
        if (add_effects.count(fact) > 0) {
            add_effects.erase(fact);
        }
    }
    std::vector<std::string> args;
    for (auto& [name, types] : action->signature) {
        args.push_back(assignment[name]);
    }
    std::string name = _get_grounded_string(action->name, args);

    std::vector<std::string> precondition_facts_vec = std::vector<std::string>(
        precondition_facts.begin(), precondition_facts.end());
    std::vector<std::string> add_effects_vec =
        std::vector<std::string>(add_effects.begin(), add_effects.end());
    std::vector<std::string> del_effects_vec =
        std::vector<std::string>(del_effects.begin(), del_effects.end());

    return new Operator(name, precondition_facts_vec, add_effects_vec,
                        del_effects_vec);
}

inline std::vector<Operator> _ground_action(
    Action action,
    std::unordered_map<std::string, std::vector<std::string>> type_map,
    std::vector<std::string> statics, std::unordered_set<std::string> init) {
    std::vector<Operator> operators;
    std::unordered_map<std::string, std::unordered_set<std::string>>
        param_to_objects;

    std::cout << "type_map is" << std::endl;
    for (auto tmp : type_map) {
        std::cout << tmp.first << ": ";
        for (auto s : tmp.second) {
            std::cout << s << " ";
        }
        std::cout << endl;
    }
    std::cout << "===" << std::endl;

    for (auto& [param_name, param_types] : action.signature) {
        // List of sets of objects for this parameter
        std::vector<std::vector<std::string>> objects;
        for (auto& type : param_types) {
            objects.push_back(type_map[type->name]);
        }
        // Combine the sets into one set
        std::unordered_set<std::string> objects_set;
        for (auto& object_set : objects) {
            objects_set.insert(object_set.begin(), object_set.end());
        }
        param_to_objects[param_name] = objects_set;
    }

    std::cout << "param_to_objects is" << std::endl;
    for (auto pop : param_to_objects) {
        std::cout << pop.first << ": ";
        for (auto ps : pop.second) {
            std::cout << ps << " ";
        }
        std::cout << std::endl;
    }
    std::cout << "----" << std::endl;

    // For each parameter that is not constant,
    // remove all invalid static preconditions
    int remove_debug = 0;
    for (auto& [param, objects] : param_to_objects) {
        for (auto& pred : action.precondition) {
            // if a static predicate is present in the precondition
            if (std::find(statics.begin(), statics.end(), pred.name) !=
                statics.end()) {
                int sig_pos = -1;
                int count = 0;
                // check if there is an instantiation with the current parameter
                for (auto& [var, _] : pred.signature) {
                    if (var == param) {
                        sig_pos = count;
                    }
                    count++;
                }
                if (sig_pos != -1) {
                    // remove if no instantiation present in initial state
                    std::unordered_set<std::string> obj_copy(objects);
                    for (auto& o : obj_copy) {
                        if (!_find_pred_in_init(pred.name, o, sig_pos, init)) {
                            // if (verbose_logging) {
                            //    remove_debug++;
                            //}
                            objects.erase(o);
                        }
                    }
                }
            }
        }
    }
    // if (verbose_logging) {
    //     std::cout << "Static precondition analysis removed " << remove_debug
    //               << " possible objects\n";
    // }

    // save a list of possible assignment tuples (param_name, object)
    std::vector<std::vector<std::pair<std::string, std::string>>> domain_lists;
    for (auto& [name, objects] : param_to_objects) {
        std::vector<std::pair<std::string, std::string>> tuples;
        for (auto& object : objects) {
            std::cout << name << ":" << object << " ";
            tuples.emplace_back(name, object);
        }
        domain_lists.push_back(tuples);
    }
    std::cout << std::endl;
    std::cout << "len of domain lists is " << domain_lists.size() << std::endl;
    // Calculate all possible assignments
    std::vector<std::vector<std::pair<std::string, std::string>>> assignments =
        product<std::pair<std::string, std::string>>(domain_lists);
    std::cout << "len of assignments is " << assignments.size() << std::endl;
    std::unordered_set<std::string> statics_set(statics.begin(), statics.end());
    // Create a new operator for each possible assignment of parameters
    for (auto& assign : assignments) {
        std::unordered_map<std::string, std::string> tmp_dict;
        for (auto tmp : assign) {
            tmp_dict.insert({tmp.first, tmp.second});
        }
        std::cout << action.name << std::endl;
        Operator* op = _create_operator(&action, tmp_dict, statics_set, init);
        if (op != nullptr) {
            operators.push_back(*op);
        }
    }

    return operators;
}

inline std::vector<Operator> _ground_actions(
    std::vector<Action> actions,
    std::unordered_map<std::string, std::vector<std::string>> type_map,
    std::vector<string> statics, std::unordered_set<std::string> init) {
    /*
    Ground a list of actions and return the resulting list of operators.
    @param actions: List of actions
    @param type_map: Mapping from type to objects of that type
    @param statics: Names of the static predicates
    @param init: Grounded initial state
    */
    std::vector<std::vector<Operator>> op_lists;
    for (Action action : actions) {
        op_lists.push_back(_ground_action(action, type_map, statics, init));
    }
    std::vector<Operator> operators;
    for (std::vector<Operator> op_list : op_lists) {
        for (Operator op : op_list) {
            std::cout << "Op: " << op.name << " ";
            operators.push_back(op);
        }
        std::cout << std::endl;
    }
    std::cout << "len of ope " << operators.size() << std::endl;
    return operators;
}

inline Task ground(Problem& problem,
                   bool remove_statics_from_initial_state = true,
                   bool remove_irrelevant_operators = true) {
    std::cout << "Print out ground parser problemdef's objects" << std::endl;
    for (auto& obp : problem.objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second->name << " ";
        if (obp.second->parent != nullptr) {
            std::cout << obp.second->parent->name;
        }
        std::cout << std::endl;
    }

    // Objects
    for (auto& obp : problem.objects) {
        std::cout << "po is nullptr ?: " << (obp.second->parent == nullptr)
                  << std::endl;
    }
    // std::unordered_map<std::string, Type>* objects = &(problem.objects);
    for (const auto& constant : problem.domain->constants) {
        std::cout << "constants is " << constant.first << std::endl;
        problem.objects.insert({constant.first, constant.second});
    }

    std::cout << "Print 1 out ground parser problemdef's objects" << std::endl;
    for (auto& obp : problem.objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second->name << " ";
        if (obp.second->parent != nullptr) {
            std::cout << obp.second->parent->name;
        }
        std::cout << std::endl;
    }
    // std::vector<Action> domain_actions = problem.domain->actions;
    if (problem.domain->actions.size() == 0) {
        for (auto ap : problem.domain->actions_dict) {
            problem.domain->actions.push_back(ap.second);
        }
    }
    std::cout << "Print 2 out ground parser problemdef's objects" << std::endl;
    for (auto& obp : problem.objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second->name << " ";
        if (obp.second->parent != nullptr) {
            std::cout << obp.second->parent->name;
        }
        std::cout << std::endl;
    }
    // problem.domain.actions = domain_actions;
    // std::vector<Predicate> domain_predicates = problem.domain->predicates;
    if (problem.domain->predicates.size() == 0) {
        for (auto pp : problem.domain->predicates_dict) {
            problem.domain->predicates.push_back(pp.second);
        }
    }

    std::cout << "Print 3 out ground parser problemdef's objects" << std::endl;
    for (auto& obp : problem.objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second->name << " ";
        if (obp.second->parent != nullptr) {
            std::cout << obp.second->parent->name;
        }
        std::cout << std::endl;
    }
    std::unordered_map<std::string, std::vector<std::string>> type_map =
        _create_type_map(problem.objects);
    // Get the names of the static predicates
    std::vector<std::string> statics =
        _get_statics(problem.domain->predicates, problem.domain->actions);

    std::cout << "Print 4 out ground parser problemdef's objects" << std::endl;
    for (auto& obp : problem.objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second->name << " ";
        if (obp.second->parent != nullptr) {
            std::cout << obp.second->parent->name;
        }
        std::cout << std::endl;
    }
    // Create a map from types to objects
    // std::unordered_map<Type, std::vector<std::string>> type_map =
    //    _create_type_map(problem.objects);

    // Transform initial state into a specific state
    std::unordered_set<string> init = _get_partial_state(problem.init);

    // std::cout << "len of domain_actions is " << domain_actions.size()
    //           << std::endl;
    //  Ground actions
    std::vector<Operator> operators =
        _ground_actions(problem.domain->actions, type_map, statics, init);

    // Ground goal
    // TODO: Remove facts that can only become true and are true in the
    //       initial state
    // TODO: Return simple unsolvable problem if goal contains a fact that can
    //       only become false and is false in the initial state
    std::unordered_set<std::string> goals = _get_partial_state(problem.goal);

    // Collect facts from operators and include the ones from the goal
    std::unordered_set<std::string> facts = _collect_facts(operators);
    facts.insert(goals.begin(), goals.end());

    // Remove statics from initial state
    std::unordered_set<std::string> new_init;
    if (remove_statics_from_initial_state) {
        for (std::string i : init) {
            if (facts.count(i) > 0) {
                new_init.insert(i);
            }
        }
        init = new_init;
    }

    // Perform relevance analysis
    if (remove_irrelevant_operators) {
        operators = relevance_analysis(operators, goals);
    }

    return Task(problem.name, facts, init, goals, operators);
}

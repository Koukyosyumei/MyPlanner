#include <algorithm>
#include <functional>
#include <iterator>
#include <map>
#include <memory>
#include <string>
#include <unordered_set>
#include <vector>

#include "pddl/pddl.h"
#include "pddl/visitable.h"
#include "task.h"

using namespace std;

std::vector<Operator> relevance_analysis(
    const std::vector<Operator>& operators,
    const std::unordered_set<Predicate>& goals, bool verbose_logging) {
    /* This implements a relevance analysis of operators.
     * We start with all facts within the goal and iteratively compute
     * a fixpoint of all relevant effects.
     * Relevant effects are those that contribute to a valid path to the goal.
     */
    bool debug = true;
    std::unordered_set<Predicate> relevant_facts;
    std::unordered_set<Predicate> old_relevant_facts;
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
            std::unordered_set<Predicate> new_addlist =
                op.add_effects() & relevant_facts;
            std::unordered_set<Predicate> new_dellist =
                op.del_effects() & relevant_facts;
            if (!new_addlist.empty() || !new_dellist.empty()) {
                // add all preconditions to relevant facts
                relevant_facts.insert(op.preconditions().begin(),
                                      op.preconditions().end());
            }
        }
        changed = old_relevant_facts != relevant_facts;
    }

    // delete all irrelevant effects
    std::unordered_set<Operator> del_operators;
    for (const auto& op : operators) {
        // calculate new effects
        std::unordered_set<Predicate> new_addlist =
            op.add_effects() & relevant_facts;
        std::unordered_set<Predicate> new_dellist =
            op.del_effects() & relevant_facts;
        if (debug) {
            debug_pruned_op.insert(op.add_effects().begin(),
                                   op.add_effects().end());
            debug_pruned_op.insert(op.del_effects().begin(),
                                   op.del_effects().end());
        }
        // store new effects
        op.set_add_effects(new_addlist);
        op.set_del_effects(new_dellist);
        if (new_addlist.empty() && new_dellist.empty()) {
            if (verbose_logging) {
                std::cout << "Relevance analysis removed oparator " << op.name()
                          << std::endl;
            }
            del_operators.insert(op);
        }
    }
    if (debug) {
        std::cout << "Relevance analysis removed " << debug_pruned_op.size()
                  << " facts" << std::endl;
    }
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

vector<Predicate> _get_statics(const vector<Predicate>& predicates,
                               const vector<Action>& actions) {
    vector<unordered_set<Predicate>> effects;
    transform(actions.begin(), actions.end(), back_inserter(effects),
              [](const Action& a) {
                  return unordered_set<Predicate>{a.effect.addlist.begin(),
                                                  a.effect.addlist.end()};
              });
    transform(actions.begin(), actions.end(), back_inserter(effects),
              [](const Action& a) {
                  return unordered_set<Predicate>{a.effect.dellist.begin(),
                                                  a.effect.dellist.end()};
              });
    unordered_set<Predicate> flattened_effects;
    for (const auto& es : effects) {
        flattened_effects.insert(es.begin(), es.end());
    }

    auto is_static = [&](const Predicate& pred) {
        return none_of(
            flattened_effects.begin(), flattened_effects.end(),
            [&](const Predicate& eff) { return pred.name == eff.name; });
    };

    vector<Predicate> statics;
    copy_if(predicates.begin(), predicates.end(), back_inserter(statics),
            is_static);
    return statics;
}

template <typename T>
using TypeMap = map<shared_ptr<Type<T>>, unordered_set<Object>>;

template <typename T>
void put_object_in_type_map(Object obj, TypeMap<T>& type_map) {
    shared_ptr<Type<T>> obj_type = obj.type;
    while (obj_type) {
        type_map[obj_type].insert(obj);
        obj_type = obj_type->parent;
    }
}

TypeMap<Object> _create_type_map(const vector<Object>& objects) {
    TypeMap<Object> type_map;
    for (const auto& obj : objects) {
        put_object_in_type_map(obj, type_map);
    }
    return type_map;
}

unordered_set<Predicate> _collect_facts(vector<Operator> operators) {
    /*
    Collect all facts from grounded operators (precondition, add
    effects and delete effects).
    */
    unordered_set<Predicate> facts;
    for (Operator op : operators) {
        for (Predicate p : op.preconditions) {
            facts.insert(p);
        }
        for (Predicate p : op.add_effects) {
            facts.insert(p);
        }
        for (Predicate p : op.del_effects) {
            facts.insert(p);
        }
    }
    return facts;
}

vector<GroundOperator> _ground_actions(vector<Action> actions, TypeMap type_map,
                                       vector<string> statics, State init) {
    /*
    Ground a list of actions and return the resulting list of operators.
    @param actions: List of actions
    @param type_map: Mapping from type to objects of that type
    @param statics: Names of the static predicates
    @param init: Grounded initial state
    */
    vector<vector<GroundOperator>> op_lists;
    for (Action action : actions) {
        op_lists.push_back(_ground_action(action, type_map, statics, init));
    }
    vector<GroundOperator> operators;
    for (vector<GroundOperator> op_list : op_lists) {
        operators.insert(operators.end(), op_list.begin(), op_list.end());
    }
    return operators;
}

bool _find_pred_in_init(string pred_name, string param, int sig_pos,
                        State init) {
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

std::vector<Operator> _ground_action(Action action, TypeMap type_map,
                                     std::vector<std::string> statics,
                                     std::vector<std::string> init) {
    std::vector<Operator> operators;
    std::unordered_map<std::string, std::unordered_set<std::string>>
        param_to_objects;

    for (auto& [param_name, param_types] : action.signature) {
        // List of sets of objects for this parameter
        std::vector<std::unordered_set<std::string>> objects;
        for (auto& type : param_types) {
            objects.push_back(type_map[type]);
        }
        // Combine the sets into one set
        std::unordered_set<std::string> objects_set;
        for (auto& object_set : objects) {
            objects_set.insert(object_set.begin(), object_set.end());
        }
        param_to_objects[param_name] = objects_set;
    }

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
                            if (verbose_logging) {
                                remove_debug++;
                            }
                            objects.erase(o);
                        }
                    }
                }
            }
        }
    }
    if (verbose_logging) {
        std::cout << "Static precondition analysis removed " << remove_debug
                  << " possible objects\n";
    }

    // save a list of possible assignment tuples (param_name, object)
    std::vector<std::vector<std::pair<std::string, std::string>>> domain_lists;
    for (auto& [name, objects] : param_to_objects) {
        std::vector<std::pair<std::string, std::string>> tuples;
        for (auto& object : objects) {
            tuples.emplace_back(name, object);
        }
        domain_lists.push_back(tuples);
    }

    // Calculate all possible assignments
    auto assignments = cartesian_product(domain_lists);

    // Create a new operator for each possible assignment of parameters
    for (auto& assign : assignments) {
        Operator op = _create_operator(action, assign, statics, init);
        if (op) {
            operators.push_back(op);
        }
    }

    return operators;
}

Operator* _create_operator(
    Action* action, std::unordered_map<std::string, std::string>& assignment,
    std::unordered_set<std::string>& statics,
    std::unordered_set<std::string>& init) {
    std::unordered_set<std::string> precondition_facts;
    for (Atom precondition : action->precondition) {
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
    return new Operator(name, precondition_facts, add_effects, del_effects);
}

// Helper function to get grounded string
string get_grounded_string(string name, vector<string> args) {
    string args_string = "";
    if (!args.empty()) {
        args_string += " ";
        for (auto arg : args) {
            args_string += arg + " ";
        }
    }
    return "(" + name + args_string + ")";
}

// Helper function to ground atom
string ground_atom(const Atom& atom,
                   const unordered_map<string, string>& assignment) {
    vector<string> names;
    for (auto [name, types] : atom.signature) {
        if (assignment.count(name)) {
            names.push_back(assignment.at(name));
        } else {
            names.push_back(name);
        }
    }
    return get_grounded_string(atom.name, names);
}

// Helper function to ground atoms
unordered_set<string> ground_atoms(
    const vector<Atom>& atoms,
    const unordered_map<string, string>& assignment) {
    unordered_set<string> grounded_atoms;
    for (auto atom : atoms) {
        grounded_atoms.insert(ground_atom(atom, assignment));
    }
    return grounded_atoms;
}

// Helper function to get fact string
string get_fact(const Atom& atom) {
    vector<string> args;
    for (auto [name, types] : atom.signature) {
        args.push_back(name);
    }
    return get_grounded_string(atom.name, args);
}

// Helper function to get partial state
unordered_set<string> get_partial_state(const vector<Atom>& atoms) {
    unordered_set<string> partial_state;
    for (auto atom : atoms) {
        partial_state.insert(get_fact(atom));
    }
    return partial_state;
}

// Helper function to find predicate in initial state
bool find_pred_in_init(const string& pred_name, const string& obj_name,
                       int sig_pos, const unordered_set<string>& init) {
    for (auto fact : init) {
        if (fact.find(pred_name) != string::npos) {
            // predicate name is in the fact
            vector<string> tokens;
            istringstream iss(fact);
            for (string token; iss >> token;) {
                tokens.push_back(token);
            }
            if (tokens[sig_pos + 1] == obj_name) {
                // the predicate is instantiated with obj_name
                return true;
            }
        }
    }
    return false;
}

Task ground(const Problem& problem,
            bool remove_statics_from_initial_state = true,
            bool remove_irrelevant_operators = true) {
    // Objects
    Objects objects = problem.objects;
    for (const auto& constant : problem.domain.constants) {
        objects.insert(constant.second.begin(), constant.second.end());
    }

    // Get the names of the static predicates
    auto statics =
        get_statics(problem.domain.predicates, problem.domain.actions);

    // Create a map from types to objects
    auto type_map = create_type_map(objects);

    // Transform initial state into a specific state
    auto init = get_partial_state(problem.initial_state);

    // Ground actions
    auto operators =
        ground_actions(problem.domain.actions, type_map, statics, init);

    // Ground goal
    // TODO: Remove facts that can only become true and are true in the
    //       initial state
    // TODO: Return simple unsolvable problem if goal contains a fact that can
    //       only become false and is false in the initial state
    auto goals = get_partial_state(problem.goal);

    // Collect facts from operators and include the ones from the goal
    auto facts = collect_facts(operators);
    facts.insert(goals.begin(), goals.end());

    // Remove statics from initial state
    if (remove_statics_from_initial_state) {
        init &= facts;
    }

    // Perform relevance analysis
    if (remove_irrelevant_operators) {
        operators = relevance_analysis(operators, goals);
    }

    return Task(problem.name, facts, init, goals, operators);
}

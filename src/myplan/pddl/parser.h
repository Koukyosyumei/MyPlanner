#include <stdexcept>
#include <string>
#include <type_traits>
#include <vector>

#include "lisp_iterators.h"
#include "parser_common.h"
#include "visitable.h"

std::string parse_name(LispIterator iter, std::string father) {
    if (!iter.peek().is_word()) {
        throw std::runtime_error(
            "Error predicate statement must conta a name!");
    }
    return iter.next().get_word();
}

std::string _parse_string_helper(LispIterator iter) { return iter.get_word(); }

std::vector<std::string> parse_string_helper_list(LispIterator& iter) {
    std::vector<std::string> result;
    while (!iter.peek().isnull()) {
        result.push_back(_parse_string_helper(iter.next()));
    }
    return result;
}

std::vector<Variable> parse_parameters(LispIterator iter);

template <typename T>
std::vector<T> _parse_type_helper(LispIterator& iter) {
    std::vector<T> result;
    std::vector<std::string> tmpList;
    while (!iter.empty()) {
        std::string var = iter.next().get_word();
        size_t count_var_0 =
            std::count(reserved.begin(), reserved.end(), var[0]);
        if (!(std::is_same<T, Variable>::value) && !var.empty() &&
            count_var_0) {
            throw runtime_error(
                "Error type must not begin with reserved char!");
        } else if (var == "-") {
            if (iter.peek().is_structure()) {
                LispIterator types_iter = iter.next();
                if (!types_iter.try_match("either")) {
                    throw runtime_error(
                        "Error multiple parent definition must start with "
                        "\"either\"");
                }
                std::vector<std::string> tlist =
                    parse_string_helper_list(types_iter);
                std::vector<Type> typelist;
                for (std::string t : tlist) {
                    typelist.push_back(Type(t, nullptr));
                }
                while (!tmpList.empty()) {
                    result.push_back(T(tmpList.back(), typelist));
                    tmpList.pop_back();
                }
            } else {
                std::string ctype = iter.next().get_word();
                Type type_ctype = Type(ctype, nullptr);
                while (!tmpList.empty()) {
                    // if (std::is_same<T, Variable>::value) {
                    //     result.push_back(T(tmpList.back(), {type_ctype}));
                    // } else {
                    result.push_back(T(tmpList.back(), &type_ctype));
                    //}
                    tmpList.pop_back();
                }
            }
        } else if (!var.empty()) {
            if (std::is_same<T, Variable>::value) {
                if (var[0] != '?') {
                    throw runtime_error(
                        "Error variables must start with a \"?\"");
                }
                tmpList.insert(tmpList.begin(), var);
            } else {
                tmpList.insert(tmpList.begin(), var);
            }
        }
    }
    while (tmpList.size() != 0) {
        result.push_back(T(tmpList.back(), nullptr));
        tmpList.pop_back();
    }
    return result;
}

Keyword parse_keyword(LispIterator iter) {
    std::string name = iter.get_word();
    if (name.empty()) {
        throw std::invalid_argument("Error empty keyword found");
    }

    if (name[0] != ':') {
        throw std::invalid_argument(
            "Error keywords have to start with a colon ':'");
    }

    return Keyword(name.substr(1));
}

std::vector<Keyword> parse_keyword_list(LispIterator& iter) {
    std::vector<Keyword> result;
    while (!iter.peek().isnull()) {
        result.push_back(parse_keyword(iter.next()));
    }
    return result;
}

Variable parse_variable(LispIterator iter) {
    std::string name = iter.get_word();
    if (name == "") {
        throw runtime_error("Error empty variale found");
    }

    if (name[0] != '?') {
        throw runtime_error("Error variables must start with a '?'");
    }
    return Variable(name);
}

std::vector<Variable> parse_typed_var_list(LispIterator iter) {
    return _parse_type_helper<Variable>(iter);
}

std::vector<Variable> ters(LispIterator iter) {
    if (!iter.try_match(":parameters")) {
        throw invalid_argument(
            "Error keyword \":parameters\" required before parameter list!");
    }
    return parse_typed_var_list(iter.next());
}

RequirementsStmt parse_requirements_stmt(LispIterator iter) {
    if (!iter.try_match(":requirements")) {
        throw invalid_argument(
            "Error requirements list must contain keyword :requirements");
    }
    std::vector<Keyword> keywords = parse_keyword_list(iter);
    return RequirementsStmt(keywords);
}

template <typename T>
std::vector<T> _parse_type_with_error(LispIterator& iter, std::string keyword) {
    if (!iter.try_match(keyword)) {
        throw invalid_argument("Error keyword" + keyword +
                               " required before type");
    }
    return _parse_type_helper<T>(iter);
}

std::vector<Type> parse_types_stmt(LispIterator& iter) {
    return _parse_type_with_error<Type>(iter, ":types");
}

std::vector<Object> parse_objects_stmt(LispIterator& iter) {
    return _parse_type_with_error<Object>(iter, ":objects");
}

std::vector<Object> parse_constants_stmt(LispIterator& iter) {
    return _parse_type_with_error<Object>(iter, ":constants");
}

DomainStmt _parse_domain_helper(LispIterator iter, std::string keyword) {
    if (!iter.try_match(keyword)) {
        throw runtime_error(
            "Error domain statement must be present before \"\"domain name!");
    }
    std::string name = parse_name(iter, "domain");
    return DomainStmt(name);
}

DomainStmt parse_domain_stmt(LispIterator it) {
    return _parse_domain_helper(it, "domain");
}

DomainStmt parse_problem_domain_stmt(LispIterator it) {
    return _parse_domain_helper(it, ":domain");
}

PredicateVar parse_predicate(LispIterator iter) {
    std::string name = parse_name(iter, "predicate");
    std::vector<Variable> params = parse_typed_var_list(iter);
    return PredicateVar(name, params);
}

std::vector<PredicateVar> parse_predicate_list(LispIterator iter) {
    std::vector<PredicateVar> result;
    while (!iter.peek().isnull()) {
        result.push_back(parse_predicate(iter.next()));
    }
    return result;
}

PredicateInstance parse_predicate_instance(LispIterator iter) {
    std::string name = parse_name(iter, "domain");
    std::vector<std::string> params;
    while (!iter.peek().isnull()) {
        params.push_back(_parse_string_helper(iter.next()));
    }
    return PredicateInstance(name, params);
}

std::vector<PredicateInstance> parse_predicate_instance_list(
    LispIterator& iter) {
    std::vector<PredicateInstance> result;
    while (!iter.peek().isnull()) {
        result.push_back(parse_predicate_instance(iter.next()));
    }
    return result;
}

Formula parse_formula(LispIterator iter) {
    /*
     * Parse a Formula recursively
     * Note: This parses formulas recursively !!
     *       We do not use tail recursion
     * Returns the position after the formula and the Formula instance
     */
    if (iter.is_structure()) {
        // this is a nested formula
        FormulaType type = FormulaType::TypeFormula;
        std::string key = iter.peek().get_word();
        iter.next();
        size_t count_key_0 =
            std::count(reserved.begin(), reserved.end(), key[0]);
        if (count_key_0) {
            throw std::invalid_argument(
                "Error: Formula must not start with reserved char!");
        }
        std::vector<Formula> children;
        while (!iter.peek().isnull()) {
            children.push_back(parse_formula(iter.next()));
        }
        return Formula(key, children, type);
    } else {
        // non nested formula
        std::string key = iter.get_word();
        std::vector<Formula> children;
        FormulaType type;
        if (key[0] == '?') {
            key = parse_variable(iter).name;
            type = FormulaType::TypeVariable;
        } else {
            type = FormulaType::TypeConstant;
        }
        return Formula(key, children, type);
    }
}

template <typename T>
T _parse_precondition_or_effect(LispIterator& iter, std::string keyword) {
    /*
     * Parse an action precondition or effect
     * Returns a PreconditionStmt or EffectStmt instance.
     */
    if (!iter.try_match(keyword)) {
        throw std::invalid_argument("Error: must start with \"" + keyword +
                                    "\" keyword");
    }
    Formula cond = parse_formula(iter.next());
    return T(cond);
}

PreconditionStmt parse_precondition_stmt(LispIterator& it) {
    return _parse_precondition_or_effect<PreconditionStmt>(it, ":precondition");
}

EffectStmt parse_effect_stmt(LispIterator& it) {
    return _parse_precondition_or_effect<EffectStmt>(it, ":effect");
}

ActionStmt parse_action_stmt(LispIterator& iter) {
    /*
     * Parse an action definition which consists of a name, parameters a
     * precondition and an effect.
     * Returns an ActionStmt instance.
     */
    // each action begins with a name
    if (!iter.try_match(":action")) {
        throw std::invalid_argument(
            "Error: action must start with \":action\" keyword!");
    }
    std::string name = parse_name(iter, "action");
    // call parsers to parse parameters, precondition, effect
    std::vector<Variable> param = parse_parameters(iter);
    PreconditionStmt pre = parse_precondition_stmt(iter);
    EffectStmt eff = parse_effect_stmt(iter);
    return ActionStmt(name, param, &pre, &eff);
}

PredicatesStmt parse_predicates_stmt(LispIterator& iter) {
    /*
     * Parse a PredicatesStmt which is essentially a list of predicates preceded
     * by the ':predicates' keyword.
     * Returns a PredicatesStmt instance
     */
    if (!iter.try_match(":predicates")) {
        throw std::invalid_argument(
            "Error predicate definition must start with \":predicates\" "
            "keyword!");
    }
    std::vector<PredicateVar> predicates = parse_predicate_list(iter);
    return PredicatesStmt(predicates);
}

DomainDef parse_domain_def(LispIterator& iter) {
    std::string defString = parse_name(iter, "domain def");
    if (defString != "define") {
        throw std::invalid_argument(
            "Invalid domain definition! --> domain definition must start with "
            "\"define\"");
    }

    DomainStmt dom = parse_domain_stmt(iter.next());
    DomainDef domain(dom.name);

    while (!iter.empty()) {
        LispIterator next_iter = iter.next();
        Keyword key = parse_keyword(next_iter.peek());
        if (key.name == "requirements") {
            RequirementsStmt req = parse_requirements_stmt(next_iter);
            domain.requirements = &req;
        } else if (key.name == "types") {
            std::vector<Type> types = parse_types_stmt(next_iter);
            domain.types = types;
        } else if (key.name == "predicates") {
            PredicatesStmt pred = parse_predicates_stmt(next_iter);
            domain.predicates = &pred;
        } else if (key.name == "constants") {
            std::vector<Object> cst = parse_constants_stmt(next_iter);
            domain.constants = cst;
        } else if (key.name == "action") {
            ActionStmt action = parse_action_stmt(next_iter);
            domain.actions.push_back(action);
            break;
        } else {
            throw std::invalid_argument(
                "Found unknown keyword in domain definition: " + key.name);
        }
    }

    while (!iter.empty()) {
        LispIterator next_iter = iter.next();
        Keyword key = parse_keyword(next_iter.peek());
        if (key.name != "action") {
            throw std::invalid_argument(
                "Error: Found invalid keyword while parsing actions");
        }
        ActionStmt action = parse_action_stmt(next_iter);
        domain.actions.push_back(action);
    }

    iter.match_end();
    return domain;
}

InitStmt parse_init_stmt(LispIterator& iter) {
    if (!iter.try_match(":init")) {
        throw std::runtime_error(
            "Error found invalid keyword when parsing InitStmt");
    }

    std::vector<PredicateInstance> preds = parse_predicate_instance_list(iter);
    return InitStmt(preds);
}

GoalStmt parse_goal_stmt(LispIterator& iter) {
    if (!iter.try_match(":goal")) {
        throw std::runtime_error(
            "Error found invalid keyword when parsing GoalStmt");
    }

    Formula f = parse_formula(iter);
    return GoalStmt(&f);
}

std::string parse_problem_name(LispIterator& iter) {
    if (!iter.try_match("problem")) {
        throw std::runtime_error(
            "Invalid problem name specification! problem name definition must "
            "start with \"problem\"");
    }
    return parse_name(iter, "problem name");
}

ProblemDef parse_problem_def(LispIterator& iter) {
    if (!iter.try_match("define")) {
        throw std::runtime_error(
            "Invalid problem definition! --> problem definition must start "
            "with \"define\"");
    }

    // parse problem name and corresponding domain name
    std::string probname = parse_problem_name(iter);
    DomainStmt dom = parse_problem_domain_stmt(iter);

    // parse all object definitions
    std::vector<Object> objects;
    if (iter.peek_tag() == ":objects") {
        objects = parse_objects_stmt(iter);
    }

    InitStmt init = parse_init_stmt(iter);
    GoalStmt goal = parse_goal_stmt(iter);

    // assert end is reached
    iter.match_end();

    // create new ProblemDef instance
    return ProblemDef(probname, dom.name, objects, &init, &goal);
}


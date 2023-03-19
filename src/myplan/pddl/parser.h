#pragma once
#include <stdexcept>
#include <string>
#include <type_traits>
#include <vector>

#include "lisp_iterators.h"
#include "lisp_parser.h"
#include "parser_common.h"
#include "tree_visitor.h"
#include "visitable.h"

inline std::string parse_name(LispIterator& iter, std::string father) {
    if (!iter.peek().is_word()) {
        throw std::runtime_error(
            "Error predicate statement must conta a name!");
    }
    return iter.next().get_word();
}

inline std::string _parse_string_helper(LispIterator& iter) {
    return iter.get_word();
}

inline std::vector<std::string> parse_string_helper_list(LispIterator& iter) {
    std::vector<std::string> result;
    while (!iter.peek().isnull()) {
        LispIterator next_iter = iter.next();
        result.push_back(_parse_string_helper(next_iter));
    }
    return result;
}

// std::vector<Variable> parse_parameters(LispIterator iter);

template <typename T>
inline std::vector<T> _parse_type_helper(LispIterator& iter) {
    std::vector<T> result;
    std::vector<std::string> tmpList;
    while (!iter.empty()) {
        std::string var = iter.next().get_word();
        size_t count_var_0 =
            std::count(reserved.begin(), reserved.end(), var.substr(0, 1));
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
                while (!tmpList.empty()) {
                    result.push_back(T(tmpList.back(), tlist));
                    tmpList.pop_back();
                }
            } else {
                std::string ctype = iter.next().get_word();
                while (!tmpList.empty()) {
                    result.push_back(T(tmpList.back(), ctype));
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
        result.push_back(T(tmpList.back(), "<NULL>"));
        tmpList.pop_back();
    }
    return result;
}

inline std::vector<Type> _parse_types_helper(LispIterator& iter) {
    std::vector<Type> result;
    std::vector<std::string> tmpList;
    while (!iter.empty()) {
        std::string var = iter.next().get_word();
        size_t count_var_0 =
            std::count(reserved.begin(), reserved.end(), var.substr(0, 1));
        if (!var.empty() && count_var_0) {
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
                Type* tmp_parent = new Type(tlist[0], nullptr);
                while (!tmpList.empty()) {
                    result.push_back(Type(tmpList.back(), tmp_parent));
                    std::cout << "1-Type " << result[result.size() - 1].name
                              << std::endl;
                    tmpList.pop_back();
                }
            } else {
                std::string ctype = iter.next().get_word();
                Type* tmp_parent = new Type(ctype, nullptr);
                std::cout << "2.5-Type " << ctype << std::endl;
                while (!tmpList.empty()) {
                    result.push_back(Type(tmpList.back(), tmp_parent));
                    std::cout << "2-Type " << result[result.size() - 1].name
                              << std::endl;
                    tmpList.pop_back();
                }
            }
        } else if (!var.empty()) {
            tmpList.insert(tmpList.begin(), var);
        }
    }
    while (tmpList.size() != 0) {
        result.push_back(Type(tmpList.back(), nullptr));
        std::cout << "3-Type " << result[result.size() - 1].name << std::endl;
        tmpList.pop_back();
    }
    return result;
}

inline Keyword parse_keyword(LispIterator& iter) {
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

inline std::vector<Keyword> parse_keyword_list(LispIterator& iter) {
    std::vector<Keyword> result;
    while (!iter.peek().isnull()) {
        LispIterator next_iter = iter.next();
        result.push_back(parse_keyword(next_iter));
    }
    return result;
}

inline Variable parse_variable(LispIterator& iter) {
    std::string name = iter.get_word();
    if (name == "") {
        throw runtime_error("Error empty variale found");
    }

    if (name[0] != '?') {
        throw runtime_error("Error variables must start with a '?'");
    }
    return Variable(name, "<NULL>");
}

inline std::vector<Variable> parse_typed_var_list(LispIterator& iter) {
    return _parse_type_helper<Variable>(iter);
}

inline std::vector<Variable> parse_parameters(LispIterator& iter) {
    if (!iter.try_match(":parameters")) {
        throw invalid_argument(
            "Error keyword \":parameters\" required before parameter list!");
    }
    LispIterator next_iter = iter.next();
    return parse_typed_var_list(next_iter);
}

inline RequirementsStmt parse_requirements_stmt(LispIterator& iter) {
    if (!iter.try_match(":requirements")) {
        throw invalid_argument(
            "Error requirements list must contain keyword :requirements");
    }
    std::vector<Keyword> keywords = parse_keyword_list(iter);
    return RequirementsStmt(keywords);
}

template <typename T>
inline std::vector<T> _parse_type_with_error(LispIterator& iter,
                                             std::string keyword) {
    if (!iter.try_match(keyword)) {
        throw invalid_argument("Error keyword" + keyword +
                               " required before type");
    }
    return _parse_type_helper<T>(iter);
}

inline std::vector<Type> _parse_types_with_error(LispIterator& iter,
                                                 std::string keyword) {
    if (!iter.try_match(keyword)) {
        throw invalid_argument("Error keyword" + keyword +
                               " required before type");
    }
    return _parse_types_helper(iter);
}

inline std::vector<Type> parse_types_stmt(LispIterator& iter) {
    return _parse_types_with_error(iter, ":types");
}

inline std::vector<Object> parse_objects_stmt(LispIterator& iter) {
    return _parse_type_with_error<Object>(iter, ":objects");
}

inline std::vector<Object> parse_constants_stmt(LispIterator& iter) {
    return _parse_type_with_error<Object>(iter, ":constants");
}

inline DomainStmt _parse_domain_helper(LispIterator& iter,
                                       std::string keyword) {
    if (!iter.try_match(keyword)) {
        throw runtime_error(
            "Error domain statement must be present before \"\"domain name!");
    }
    std::string name = parse_name(iter, "domain");
    return DomainStmt(name);
}

inline DomainStmt parse_domain_stmt(LispIterator& it) {
    return _parse_domain_helper(it, "domain");
}

inline DomainStmt parse_problem_domain_stmt(LispIterator& it) {
    return _parse_domain_helper(it, ":domain");
}

inline PredicateVar parse_predicate(LispIterator& iter) {
    std::string name = parse_name(iter, "predicate");
    std::vector<Variable> params = parse_typed_var_list(iter);
    return PredicateVar(name, params);
}

inline std::vector<PredicateVar> parse_predicate_list(LispIterator& iter) {
    std::vector<PredicateVar> result;
    while (!iter.peek().isnull()) {
        LispIterator next_iter = iter.next();
        result.push_back(parse_predicate(next_iter));
    }
    return result;
}

inline PredicateInstance parse_predicate_instance(LispIterator& iter) {
    std::string name = parse_name(iter, "domain");
    std::vector<std::string> params;
    while (!iter.peek().isnull()) {
        LispIterator next_iter = iter.next();
        params.push_back(_parse_string_helper(next_iter));
    }
    return PredicateInstance(name, params);
}

inline std::vector<PredicateInstance> parse_predicate_instance_list(
    LispIterator& iter) {
    std::vector<PredicateInstance> result;
    while (!iter.peek().isnull()) {
        LispIterator next_iter = iter.next();
        result.push_back(parse_predicate_instance(next_iter));
    }
    return result;
}

inline Formula parse_formula(LispIterator& iter) {
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
            std::count(reserved.begin(), reserved.end(), key.substr(0, 1));
        if (count_key_0) {
            throw std::invalid_argument(
                "Error: Formula must not start with reserved char!");
        }
        std::vector<Formula> children;
        while (!iter.peek().isnull()) {
            LispIterator next_iter = iter.next();
            children.push_back(parse_formula(next_iter));
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
inline T _parse_precondition_or_effect(LispIterator& iter,
                                       std::string keyword) {
    /*
     * Parse an action precondition or effect
     * Returns a PreconditionStmt or EffectStmt instance.
     */
    if (!iter.try_match(keyword)) {
        throw std::invalid_argument("Error: must start with \"" + keyword +
                                    "\" keyword");
    }
    LispIterator next_iter = iter.next();
    Formula cond = parse_formula(next_iter);
    return T(cond);
}

inline PreconditionStmt parse_precondition_stmt(LispIterator& it) {
    return _parse_precondition_or_effect<PreconditionStmt>(it, ":precondition");
}

inline EffectStmt parse_effect_stmt(LispIterator& it) {
    return _parse_precondition_or_effect<EffectStmt>(it, ":effect");
}

inline ActionStmt parse_action_stmt(LispIterator& iter) {
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
    return ActionStmt(name, param, pre, eff);
}

inline PredicatesStmt parse_predicates_stmt(LispIterator& iter) {
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

inline DomainDef parse_domain_def(LispIterator& iter) {
    std::string defString = parse_name(iter, "domain def");
    if (defString != "define") {
        throw std::invalid_argument(
            "Invalid domain definition! --> domain definition must start with "
            "\"define\"");
    }

    LispIterator next_iter = iter.next();
    DomainStmt dom = parse_domain_stmt(next_iter);
    DomainDef domain(dom.name);

    while (!iter.empty()) {
        LispIterator next_iter = iter.next();
        LispIterator next_iter_peek = next_iter.peek();
        Keyword key = parse_keyword(next_iter_peek);
        if (key.name == "requirements") {
            RequirementsStmt req = parse_requirements_stmt(next_iter);
            domain.requirements = req;
        } else if (key.name == "types") {
            std::vector<Type> types = parse_types_stmt(next_iter);
            domain.types = types;
        } else if (key.name == "predicates") {
            PredicatesStmt pred = parse_predicates_stmt(next_iter);
            domain.predicates = pred;
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
        LispIterator next_iter_peek = next_iter.peek();
        Keyword key = parse_keyword(next_iter_peek);
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

inline InitStmt parse_init_stmt(LispIterator& iter) {
    if (!iter.try_match(":init")) {
        throw std::runtime_error(
            "Error found invalid keyword when parsing InitStmt");
    }

    std::vector<PredicateInstance> preds = parse_predicate_instance_list(iter);
    return InitStmt(preds);
}

inline GoalStmt parse_goal_stmt(LispIterator& iter) {
    if (!iter.try_match(":goal")) {
        throw std::runtime_error(
            "Error found invalid keyword when parsing GoalStmt");
    }

    LispIterator next_iter = iter.next();
    Formula f = parse_formula(next_iter);
    return GoalStmt(f);
}

inline std::string parse_problem_name(LispIterator& iter) {
    if (!iter.try_match("problem")) {
        throw std::runtime_error(
            "Invalid problem name specification! problem name definition must "
            "start with \"problem\"");
    }
    return parse_name(iter, "problem name");
}

inline ProblemDef parse_problem_def(LispIterator& iter) {
    if (!iter.try_match("define")) {
        throw std::runtime_error(
            "Invalid problem definition! --> problem definition must start "
            "with \"define\"");
    }

    // parse problem name and corresponding domain name
    LispIterator next_iter_1 = iter.next();
    std::string probname = parse_problem_name(next_iter_1);
    LispIterator next_iter_2 = iter.next();
    DomainStmt dom = parse_problem_domain_stmt(next_iter_2);

    // parse all object definitions
    std::vector<Object> objects;
    if (iter.peek_tag() == ":objects") {
        LispIterator next_iter_3 = iter.next();
        objects = parse_objects_stmt(next_iter_3);
    }

    LispIterator next_iter_4 = iter.next();
    InitStmt init = parse_init_stmt(next_iter_4);
    LispIterator next_iter_5 = iter.next();
    GoalStmt goal = parse_goal_stmt(next_iter_5);

    // assert end is reached
    iter.match_end();

    // create new ProblemDef instance
    return ProblemDef(probname, dom.name, objects, init, goal);
}

struct Parser {
    std::string domFile;
    std::string probFile;
    std::string domInput = "";
    std::string probInput = "";

    Parser(std::string domFile_, std::string probFile_ = "") {
        domFile = domFile_;
        probFile = probFile_;
    }

    LispIterator _read_input(std::vector<std::string> source) {
        LispIterator result = parse_lisp_iterator(source);
        return result;
    }

    Domain parse_domain(bool read_from_file = false) {
        std::vector<std::string> source;
        if (read_from_file) {
            std::ifstream domain_file;
            domain_file.open(domFile, std::ios::out);
            std::string tmp_line;
            while (std::getline(domain_file, tmp_line)) {
                source.push_back(tmp_line);
            }
        } else {
            source = {domInput};
        }
        LispIterator iter = _read_input(source);
        DomainDef domAST = parse_domain_def(iter);
        std::cout << "parse domain def!" << std::endl;
        TraversePDDLDomain visitor = TraversePDDLDomain();
        domAST.accept(&visitor);
        std::cout << "successufly accept" << std::endl;
        return visitor.domain;
    }

    Problem* parse_problem(Domain& dom, bool read_from_file = false) {
        std::cout << "Print out given domain.types" << std::endl;
        for (auto tpp : dom.types) {
            std::cout << tpp.first << ": ";
            std::cout << tpp.second.name << " ";
            if (tpp.second.parent != nullptr) {
                std::cout << tpp.second.parent->name;
            }
            std::cout << std::endl;
        }

        std::vector<std::string> source;
        if (read_from_file) {
            std::ifstream problem_file;
            problem_file.open(probFile, std::ios::out);
            std::string tmp_line;
            while (std::getline(problem_file, tmp_line)) {
                source.push_back(tmp_line);
            }
        } else {
            source = {probInput};
        }
        LispIterator iter = _read_input(source);
        ProblemDef probAST = parse_problem_def(iter);
        TraversePDDLProblem visitor = TraversePDDLProblem(&dom);
        probAST.accept(&visitor);
        return visitor.get_problem();
    }

    void set_prob_file(std::string fname) { probFile = fname; }
};

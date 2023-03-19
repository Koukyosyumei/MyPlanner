#pragma once
#include <any>
#include <functional>
#include <memory>
#include <set>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <vector>

#include "visitable.h"

class SemanticError : public exception {
   public:
    SemanticError(string error_msg) : msg(error_msg) {}
    const char* what() const noexcept override { return msg.c_str(); }

   private:
    string msg;
};

namespace std {
template <>
struct hash<Type> {
    size_t operator()(const Type& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge.name);
        // auto d_hash = hash<std::string>()(hoge.parent);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        // seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<PredicateVar> {
    size_t operator()(const PredicateVar& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.name);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<PredicateInstance> {
    size_t operator()(const PredicateInstance& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.name);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<Keyword> {
    size_t operator()(const Keyword& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.name);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<Variable> {
    size_t operator()(const Variable& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.name);
        auto m_hash = hash<bool>()(hoge.typed);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= m_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<Formula> {
    size_t operator()(const Formula& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.key);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<PreconditionStmt> {
    size_t operator()(const PreconditionStmt& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.formula._visitorName);
        auto m_hash = hash<std::string>()(hoge.formula.key);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= m_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<EffectStmt> {
    size_t operator()(const EffectStmt& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.formula._visitorName);
        auto m_hash = hash<std::string>()(hoge.formula.key);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= m_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<ActionStmt> {
    size_t operator()(const ActionStmt& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.name);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<InitStmt> {
    size_t operator()(const InitStmt& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        for (PredicateInstance p : hoge.predicates) {
            auto nn_hash = hash<std::string>()(p._visitorName);
            auto dd_hash = hash<std::string>()(p.name);

            seed ^= nn_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
            seed ^= dd_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        }

        return seed;
    }
};

template <>
struct hash<GoalStmt> {
    size_t operator()(const GoalStmt& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge._visitorName);
        auto d_hash = hash<std::string>()(hoge.formula._visitorName);
        auto m_hash = hash<std::string>()(hoge.formula.key);

        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        seed ^= m_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
        return seed;
    }
};

template <>
struct hash<Predicate> {
    size_t operator()(const Predicate& hoge) const {
        size_t seed = 0;
        auto n_hash = hash<std::string>()(hoge.name);
        seed ^= n_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);

        for (pair<std::string, std::vector<Type>> sp : hoge.signature) {
            auto d_hash = hash<std::string>()(sp.first);
            seed ^= d_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
            for (Type t : sp.second) {
                auto m_hash = hash<Type>()(t);
                seed ^= m_hash + 0x9e3779b9 + (seed << 6) + (seed >> 2);
            }
        }
        return seed;
    }
};

}  // namespace std

class TraversePDDLDomain : public PDDLVisitor {
   public:
    std::unordered_map<Type, Type> _typeHash;
    std::unordered_map<PredicateVar, Predicate> _predicateHash;
    std::unordered_map<Variable, pair<std::string, vector<Type>>> _variableHash;
    std::unordered_map<PreconditionStmt, std::vector<Predicate>> _precondHash;
    std::unordered_map<EffectStmt, Effect> _effectHash;
    std::unordered_map<ActionStmt, Action> _actionstmtHash;
    std::unordered_map<Keyword, std::string> _keywordHash;

    std::unordered_map<std::string, Type> _types;
    std::unordered_map<std::string, Predicate> _predicates;
    std::unordered_map<std::string, Action> _actions;
    std::unordered_map<std::string, Type> _constants;
    std::set<std::string> _requirements;
    Domain domain;
    Type _objectType = Type("object", nullptr);

    void visit_problem_def(ProblemDef* node) override {
        for (Object& o : node->objects) {
            o.accept(this);
        }

        node->init.accept(this);
        node->goal.accept(this);
    }

    void visit_init_stmt(InitStmt* node) override {
        for (PredicateInstance& p : node->predicates) {
            p.accept(this);
        }
    }

    void visit_goal_stmt(GoalStmt* node) override {
        node->formula.accept(this);
    }

    void visit_predicate_instance(PredicateInstance* node) override {}

    void visit_formula(Formula* node) override {
        for (Formula& c : node->children) {
            c.accept(this);
        }
    }

    void visit_domain_def(DomainDef* node) override {
        bool explicitObjectDef = false;

        if (node->requirements.keywords.size() != 0) {
            node->requirements.accept(this);
        }

        if (node->types.size() != 0) {
            for (Type& t : node->types) {
                if (t.name == "object") {
                    explicitObjectDef = true;
                }
                this->visit_type(&t);
                Type& type = _typeHash[t];
                _types[type.name] = type;
            }
        }

        if (!explicitObjectDef) {
            _types["object"] = _objectType;
        }

        for (auto& kv : _types) {
            if (kv.second.name == "object") {
                continue;
            }
            // Type* t = &kv.second;
            if (kv.second.parent != nullptr) {
                std::cout << "kv is " << kv.second.name << " "
                          << kv.second.parent->name << " ";
                if (_types.find(kv.second.parent->name) == _types.end()) {
                    throw SemanticError("Error unknown parent type: " +
                                        kv.second.parent->name);
                }
                kv.second.parent = &_types[kv.second.parent->name];
                std::cout << kv.second.parent->name << std::endl;
            }
        }

        node->predicates.accept(this);
        if (node->actions.size() != 0) {
            for (ActionStmt& a : node->actions) {
                a.accept(this);
                Action& action = _actionstmtHash[a];
                if (_actions.find(action.name) != _actions.end()) {
                    throw SemanticError("Error: action with name " +
                                        action.name +
                                        " has already been defined");
                }
                _actions[action.name] = action;
            }
        }

        if (node->constants.size() != 0) {
            for (int i = 0; i < node->constants.size(); i++) {
                Object* c = &node->constants[i];
                c->accept(this);
            }
        }

        std::vector<Predicate> tmp_predicates;
        for (auto pp : _predicates) {
            tmp_predicates.push_back(pp.second);
        }
        std::vector<Action> tmp_actions;
        for (auto ap : _actions) {
            tmp_actions.push_back(ap.second);
        }
        domain =
            Domain(node->name, _types, tmp_predicates, tmp_actions, _constants);
        std::cout << "Print out domain.types" << std::endl;
        for (auto tpp : domain.types) {
            std::cout << tpp.first << ": ";
            std::cout << tpp.second.name << " ";
            if (tpp.second.parent != nullptr) {
                std::cout << tpp.second.parent->name;
            }
            std::cout << std::endl;
        }
        domain.predicates_dict = _predicates;
        domain.actions_dict = _actions;
    }

    void visit_object(Object* node) override {
        std::string type_name = node->typeName;
        if (type_name == "<NULL>") {
            type_name = "object";
        }
        if (_types.find(type_name) == _types.end()) {
            throw SemanticError("Error: unknown type " + type_name +
                                " used in object definition!");
        }
        if (_constants.find(node->name) != _constants.end()) {
            throw SemanticError("Error: multiple defines of object with name " +
                                node->name);
        }
        _constants[node->name] = _types[type_name];
    }

    void visit_type(Type* node) override {
        if (node->parent == nullptr) {
            Type* obj = new Type("object", nullptr);
            _typeHash[*node] = Type(node->name, obj);
        } else {
            _typeHash[*node] = Type(node->name, node->parent);
        }
        std::cout << "4-Type " << node->name << std::endl;
    }

    void visit_requirements_stmt(RequirementsStmt* node) override {
        /* Visits a PDDL requirement statement. */
        /* Visit all requirement keywords... */
        for (Keyword& k : node->keywords) {
            k.accept(this);
            std::string requirementName = _keywordHash[k];
            /* ... and add them to the requirement list. */
            _requirements.insert(requirementName);
        }
    }

    void visit_keyword(Keyword* node) override {
        /* Visits a PDDL keyword. */
        /* Nothing to do but to store its name in the node. */
        _keywordHash[*node] = node->name;
    }

    void visit_predicates_stmt(PredicatesStmt* node) override {
        /* Visits a PDDL predicate statement. */
        /* Visit all predicates in the predicate statement. */
        for (PredicateVar& p : node->predicates) {
            p.accept(this);
            Predicate predicate = _predicateHash[p];
            /* Check for duplicate predicate definitions. */
            if (_predicates.count(predicate.name)) {
                throw SemanticError("Error predicate with name " +
                                    predicate.name +
                                    " has already been defined");
            }
            /* Add to predicate list. */
            _predicates[predicate.name] = predicate;
        }
    }

    void visit_predicate(PredicateVar* node) override {
        /* Visits a PDDL predicate. */
        std::vector<pair<std::string, std::vector<Type>>> signature;
        /* Visit all predicate parameters. */
        for (Variable& v : node->parameters) {
            v.accept(this);
            pair<std::string, std::vector<Type>> signatureTuple =
                _variableHash[v];
            /* Append each parameter to the predicate signature. */
            signature.emplace_back(signatureTuple);
        }
        /* Create new PDDL predicate and store it in node. */
        _predicateHash[*node] = Predicate(node->name, signature);
    }

    void visit_variable(Variable* node) override {
        /* Visits a PDDL variable. */
        /* If there is no type given, it's always of type 'object'. */
        if (!node->typed) {
            std::vector<Type> typelist = {_types["object"]};
            _variableHash[*node] = make_pair(node->name, typelist);
        } else {
            /* Visit all type declarations of the variable. */
            std::vector<Type> typelist;
            for (auto& t : node->types) {
                /* Check whether they have been defined. */
                if (!_types.count(t)) {
                    throw SemanticError("Error unknown type " + t +
                                        " used in predicate definition");
                }
                typelist.emplace_back(_types[t]);
            }
            /* Store variable information (var_name, tuple(types)) in node. */
            _variableHash[*node] = make_pair(node->name, typelist);
        }
    }

    void visit_action_stmt(ActionStmt* node) override {
        /* Visits a PDDL action statement. */
        std::vector<pair<std::string, std::vector<Type>>> signature;
        /* Visit all parameters and create signature. */
        for (Variable& v : node->parameters) {
            v.accept(this);
            pair<std::string, std::vector<Type>> signatureTuple =
                _variableHash[v];
            signature.emplace_back(signatureTuple);
        }
        /* Visit the precondition statement. */
        node->precond.accept(this);
        std::vector<Predicate> precond = _precondHash[node->precond];
        /* Visit the effect statement. */
        node->effect.accept(this);
        Effect effect = _effectHash[node->effect];
        /* Create new PDDL action and store in node. */
        _actionstmtHash[*node] = Action(node->name, signature, precond, effect);
    }

    void add_precond(std::vector<Predicate>& precond, Formula& c) {
        Predicate preDef = _predicates[c.key];
        std::vector<pair<std::string, vector<Type>>> signature;
        int count = 0;
        if (c.children.size() != preDef.signature.size()) {
            throw SemanticError(
                "Error: wrong number of arguments for "
                "predicate " +
                c.key +
                " in precondition of "
                "action");
        }
        for (Formula v : c.children) {
            signature.push_back(
                make_pair(v.key, preDef.signature[count].second));
            count++;
        }

        precond.push_back(Predicate(c.key, signature));
    }

    void visit_precondition_stmt(PreconditionStmt* node) override {
        // Visits a PDDL precondition statement.
        std::vector<Predicate> precond;
        Formula& formula = node->formula;
        // For now we only allow 'and' in the precondition.
        if (formula.key == "and") {
            // Apply to all predicates in precondition.
            for (auto& c : formula.children) {
                if (c.key == "<NULL>") {
                    throw SemanticError("Error predicate with non str key");
                }
                // Check whether predicate was defined.
                if (_predicates.find(c.key) == _predicates.end()) {
                    throw SemanticError("Error unknown predicate " + c.key +
                                        " used in precondition of action");
                }
                // Call helper.
                add_precond(precond, c);
            }
        } else {
            // If not 'and' we only allow a single predicate in precondition.
            if (_predicates.find(formula.key) == _predicates.end()) {
                throw SemanticError(
                    "Error: predicate in precondition is not in CNF");
            }
            // Call helper.
            add_precond(precond, formula);
        }
        _precondHash[*node] = precond;
    }

    void visit_effect_stmt(EffectStmt* node) override {
        // Visits a PDDL effect statement.
        Formula& formula = node->formula;
        Effect effect;
        // For now we only allow 'and' in the effect.
        if (formula.key == "and") {
            for (Formula& c : formula.children) {
                // Call helper.
                add_effect(effect, c);
            }
        } else {
            // Call helper.
            add_effect(effect, formula);
        }
        // Store effect in node.
        _effectHash[*node] = effect;
    }

    void add_effect(Effect& effect, Formula& c) {
        // Helper function for visit_effect_stmt.
        // Needed for instance check.

        Formula nextPredicate;
        bool isNegative = false;
        if (c.key == "not") {
            // This is a negative effect, only one child allowed.
            if (c.children.size() != 1) {
                throw SemanticError(
                    "Error not statement with multiple children in effect of "
                    "action");
            }
            nextPredicate = c.children[0];
            isNegative = true;
        } else {
            nextPredicate = c;
        }
        // Check whether predicate was defined previously.
        if (_predicates.find(nextPredicate.key) == _predicates.end()) {
            throw SemanticError("Error: unknown predicate " +
                                nextPredicate.key +
                                " used in effect of action");
        }
        if (nextPredicate.key == "<NULL>") {
            throw SemanticError(
                "Error: NoneType predicate used in effect of action");
        }
        Predicate predDef = _predicates[nextPredicate.key];
        std::vector<std::pair<std::string, std::vector<Type>>> signature;
        int count = 0;
        // Check whether predicate is used with the correct signature.
        if (nextPredicate.children.size() != predDef.signature.size()) {
            throw SemanticError(
                "Error: wrong number of arguments for predicate " +
                nextPredicate.key + " in effect of action");
        }
        // Apply to all parameters.
        for (Formula& v : nextPredicate.children) {
            signature.push_back(
                std::make_pair(v.key, predDef.signature[count].second));
            count++;
        }

        // Add a new effect to the positive or negative effects respectively.
        if (isNegative) {
            effect.dellist.insert(Predicate(nextPredicate.key, signature));
        } else {
            effect.addlist.insert(Predicate(nextPredicate.key, signature));
        }
    }
};

class TraversePDDLProblem : public PDDLVisitor {
   private:
    Domain* _domain;
    Problem* _problemDef;
    std::unordered_map<PredicateInstance, Predicate> _predicateHash;
    std::unordered_map<InitStmt, std::vector<Predicate>> _initHash;
    std::unordered_map<GoalStmt, std::vector<Predicate>> _goalHash;
    std::unordered_map<std::string, Type> _objects;

   public:
    TraversePDDLProblem() {}
    TraversePDDLProblem(Domain* domain) : _domain(domain) {}

    Problem* get_problem() { return _problemDef; }

    void visit_domain_def(DomainDef* node) override {
        node->requirements.accept(this);

        if (node->types.size() != 0) {
            for (Type& t : node->types) {
                this->visit_type(&t);
            }
        }
        if (node->constants.size() != 0) {
            for (Object& c : node->constants) {
                c.accept(this);
            }
        }
        node->predicates.accept(this);
        if (node->actions.size() != 0) {
            for (ActionStmt& a : node->actions) {
                a.accept(this);
            }
        }
    }

    void visit_predicates_stmt(PredicatesStmt* node) override {
        for (PredicateVar& p : node->predicates) {
            p.accept(this);
        }
    }

    void visit_action_stmt(ActionStmt* node) override {
        for (Variable& v : node->parameters) {
            v.accept(this);
        }
        node->precond.accept(this);
        node->effect.accept(this);
    }

    void visit_type(Type* node) override {}

    void visit_effect_stmt(EffectStmt* node) override {
        node->formula.accept(this);
    }

    void visit_precondition_stmt(PreconditionStmt* node) override {
        node->formula.accept(this);
    }

    void visit_requirements_stmt(RequirementsStmt* node) override {
        for (Keyword& k : node->keywords) {
            k.accept(this);
        }
    }

    void visit_predicate(PredicateVar* node) override {
        for (Variable& v : node->parameters) {
            v.accept(this);
        }
    }

    void visit_variable(Variable* node) override {}

    void visit_keyword(Keyword* node) override {}

    void visit_problem_def(ProblemDef* node) override {
        // Check whether the in the problem file referenced domain name matches
        // the supplied domain data structure.
        if (node->domainName != _domain->name) {
            throw std::runtime_error(
                "Error trying to parse problem file with domain: " +
                node->domainName +
                " together with a domain file that specifies domain: " +
                _domain->name);
        }
        // Apply to all object definitions.
        for (Object& o : node->objects) {
            o.accept(this);
        }

        // Apply to the initial state definition.
        node->init.accept(this);
        std::vector<Predicate> init_list = _initHash[node->init];

        // Apply to the goal state definition.
        node->goal.accept(this);
        std::vector<Predicate> goal_list = _goalHash[node->goal];

        std::cout << "Print out 's objects" << std::endl;
        for (auto& obp : _objects) {
            std::cout << obp.first << " ";
            std::cout << obp.second.name << " ";
            if (obp.second.parent != nullptr) {
                std::cout << obp.second.parent->name;
            }
            std::cout << std::endl;
        }

        // Create the problem data structure.
        _problemDef =
            new Problem(node->name, _domain, _objects, init_list, goal_list);

        std::cout << "Print out problemdef's objects" << std::endl;
        for (auto& obp : _problemDef->objects) {
            std::cout << obp.first << " ";
            std::cout << obp.second.name << " ";
            if (obp.second.parent != nullptr) {
                std::cout << obp.second.parent->name;
            }
            std::cout << std::endl;
        }
    }

    void visit_formula(Formula* node) override {
        for (Formula& c : node->children) {
            c.accept(this);
        }
    }

    void visit_object(Object* node) override {
        // Type type_def = Type("<NULL>", nullptr);
        // Check for multiple definition of objects.
        if (_objects.find(node->name) != _objects.end()) {
            throw std::runtime_error(
                "Error multiple defines of object with name " + node->name);
        }
        // Untyped objects get the standard type 'object'.
        if (node->typeName == "<NULL>") {
            _objects[node->name] = _domain->types["object"];
        } else {
            // Check whether used type was introduced in domain file.
            if (_domain->types.find(node->typeName) == _domain->types.end()) {
                throw std::runtime_error("Error: unknown type " +
                                         node->typeName +
                                         " used in object definition!");
            }
            std::cout << "domain_type is "
                      << _domain->types[node->typeName].name << " ";
            if (_domain->types[node->typeName].parent != nullptr) {
                std::cout << _domain->types[node->typeName].parent->name;
            }
            std::cout << std::endl;

            _objects[node->name] = _domain->types[node->typeName];

            std::cout << "99999 domain_type is " << _objects[node->name].name
                      << " ";
            if (_objects[node->name].parent != nullptr) {
                std::cout << _objects[node->name].parent->name;
            }
            std::cout << std::endl;
        }
        // std::cout << "Visit objects: " << type_def.name;
        //  if (type_def.parent != nullptr) {
        //      std::cout << " " << type_def.parent->name;
        //  }
        // std::cout << std::endl;
        //_objects[node->name] = type_def;
    }

    void visit_init_stmt(InitStmt* node) override {
        std::vector<Predicate> initList;
        // Apply to all predicates in the statement.
        for (PredicateInstance& p : node->predicates) {
            p.accept(this);
            Predicate pred = _predicateHash[p];
            initList.push_back(pred);
        }
        _initHash[*node] = initList;
    }
    void add_goal(std::vector<Predicate>& goal, Formula& c) {
        /* Helper function for visit_goal_stmt.
         * Arguments:
         * - goal: a list of goals
         * - c: a formula representing a goal we want to add to the goal list
         */

        // Check whether predicate was introduced in domain file.
        if (this->_domain->predicates_dict.find(c.key) ==
            this->_domain->predicates_dict.end()) {
            throw SemanticError("Error: unknown predicate " + c.key +
                                " in goal definition");
        }

        // Get predicate from the domain data structure.
        Predicate predDef = this->_domain->predicates_dict[c.key];
        std::vector<std::pair<std::string, std::vector<Type>>> signature;
        size_t count = 0;

        // Check whether the predicate uses the correct signature.
        if (c.children.size() != predDef.signature.size()) {
            throw SemanticError(
                "Error: wrong number of arguments for "
                "predicate " +
                c.key + " in goal");
        }

        for (Formula& v : c.children) {
            signature.emplace_back(v.key, predDef.signature[count].second);
            count++;
        }

        // Add the predicate to the goal.
        goal.emplace_back(c.key, signature);
    }

    void visit_goal_stmt(GoalStmt* node) override {
        /* Visits a PDDL-problem goal state statement. */

        Formula& formula = node->formula;
        std::vector<Predicate> goal;

        // For now we only allow 'and' in the goal.
        if (formula.key == "and") {
            for (Formula& c : formula.children) {
                if (c.key == "<NULL>") {
                    throw SemanticError("Error predicate with non str key: ");
                }
                // Call helper.
                add_goal(goal, c);
            }
        } else {
            // Only a single predicate is allowed then (s.a.)
            if (this->_domain->predicates_dict.find(formula.key) ==
                this->_domain->predicates_dict.end()) {
                throw SemanticError(
                    "Error: predicate in goal definition is not in CNF");
            }
            // Call helper.
            add_goal(goal, formula);
        }

        _goalHash[*node] = goal;
    }

    void visit_predicate_instance(PredicateInstance* node) override {
        std::vector<pair<std::string, std::vector<Type>>> signature;
        // Visit all parameters.
        for (std::string o : node->parameters) {
            Type o_type = Type("<NULL>", nullptr);
            // Check whether predicate was introduced in objects or domain
            // constants.
            if (!(_objects.count(o) || _domain->constants.count(o))) {
                throw SemanticError(
                    "Error: object " + o +
                    " referenced in problem definition - but not defined");
            } else if (_objects.count(o)) {
                o_type = _objects[o];
            } else if (_domain->constants.count(o)) {
                o_type = _domain->constants[o];
            }
            std::vector<Type> tmp_o_type_vec = {o_type};
            signature.emplace_back(make_pair(o, tmp_o_type_vec));
        }
        _predicateHash[*node] = Predicate(node->name, signature);
    }
};

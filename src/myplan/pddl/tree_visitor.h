#pragma once
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

class TraversePDDLDomain : public PDDLVisitor {
   public:
    std::unordered_map<Visitable*, std::string> _nodeHash;
    std::unordered_map<std::string, Type*> _types;
    std::unordered_map<std::string, Predicate*> _predicates;
    std::unordered_map<std::string, Action*> _actions;
    std::unordered_map<std::string, std::vector<Object>*> _constants;
    std::set<std::string> _requirements;
    Domain* domain = nullptr;
    Type* _objectType = new Type("object", nullptr);

    std::string get_in(Visitable* node) { return _nodeHash[node]; }

    void set_in(Node* node, std::string val) { _nodeHash[node] = val; }

    void visit_domain_def(DomainDef* node) override {
        bool explicitObjectDef = false;

        if (node->requirements.keywords.size() != 0) {
            node->requirements.accept(this);
        }

        if (node->types.size() != 0) {
            for (Type* t : *(node->types)) {
                if (t->name == "object") {
                    explicitObjectDef = true;
                }
                t->accept(this);
                Type* type = static_cast<Type*>(get_in(t));
                _types[type->name] = type;
            }
        }

        if (!explicitObjectDef) {
            _types["object"] = _objectType;
        }

        for (auto& kv : _types) {
            if (kv.first == "object") {
                continue;
            }
            Type* t = kv.second;
            if (_types.find(t->parent) == _types.end()) {
                throw SemanticError("Error unknown parent type: " + t->parent);
            }
            t->parent = _types[t->parent];
        }

        node->predicates.accept(this);

        if (node->actions.size() != 0) {
            for (Action* a : *(node->actions)) {
                a->accept(this);
                Action* action = static_cast<Action*>(get_in(a));
                if (_actions.find(action->name) != _actions.end()) {
                    throw SemanticError("Error: action with name " +
                                        action->name +
                                        " has already been defined");
                }
                _actions[action->name] = action;
            }
        }

        if (node->constants.size() != 0) {
            for (Constant* c : *(node->constants)) {
                c->accept(this);
            }
        }

        domain =
            new Domain(node->name, _types, _predicates, _actions, _constants);
    }

    void visit_object(Object* node) override {
        std::string type_name = node->typeName;
        if (type_name == "") {
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
        if (node->parent == "<NULL>") {
            set_in(node, new Type(node->name, "object"));
        } else {
            set_in(node, new Type(node->name, node->parent));
        }
    }

    void visit_requirements_stmt(RequirementsStmt* node) {
        /* Visits a PDDL requirement statement. */
        /* Visit all requirement keywords... */
        for (auto& k : node->keywords) {
            k->accept(*this);
            auto requirementName = get_in(k);
            /* ... and add them to the requirement list. */
            _requirements.insert(requirementName);
        }
    }

    void visit_keyword(Keyword* node) {
        /* Visits a PDDL keyword. */
        /* Nothing to do but to store its name in the node. */
        set_in(node, node->name);
    }

    void visit_predicates_stmt(PredicatesStmt* node) {
        /* Visits a PDDL predicate statement. */
        /* Visit all predicates in the predicate statement. */
        for (auto& p : node->predicates) {
            p->accept(*this);
            auto predicate = get_in(p);
            /* Check for duplicate predicate definitions. */
            if (_predicates.count(predicate->name)) {
                throw SemanticError("Error predicate with name " +
                                    predicate->name +
                                    " has already been defined");
            }
            /* Add to predicate list. */
            _predicates[predicate->name] = predicate;
        }
    }

    void visit_predicate(Predicate* node) {
        /* Visits a PDDL predicate. */
        auto signature = vector<pair<string, vector<string>>>();
        /* Visit all predicate parameters. */
        for (auto& v : node->parameters) {
            v->accept(*this);
            auto signatureTuple = get_in(v);
            /* Append each parameter to the predicate signature. */
            signature.emplace_back(signatureTuple);
        }
        /* Create new PDDL predicate and store it in node. */
        set_in(node, make_shared<pddl::Predicate>(node->name, signature));
    }

    void visit_variable(Variable* node) {
        /* Visits a PDDL variable. */
        /* If there is no type given, it's always of type 'object'. */
        if (!node->typed) {
            set_in(node,
                   make_pair(node->name, vector<string>{_types["object"]}));
        } else {
            /* Visit all type declarations of the variable. */
            auto typelist = vector<string>();
            for (auto& t : node->types) {
                /* Check whether they have been defined. */
                if (!_types.count(t)) {
                    throw SemanticError("Error unknown type " + t +
                                        " used in predicate definition");
                }
                typelist.emplace_back(_types[t]);
            }
            /* Store variable information (var_name, tuple(types)) in node. */
            set_in(node, make_pair(node->name, typelist));
        }
    }

    void visit_action_stmt(ActionStmt* node) {
        /* Visits a PDDL action statement. */
        auto signature = vector<pair<string, vector<string>>>();
        /* Visit all parameters and create signature. */
        for (auto& v : node->parameters) {
            v->accept(*this);
            auto signatureTuple = get_in(v);
            signature.emplace_back(signatureTuple);
        }
        /* Visit the precondition statement. */
        node->precond->accept(*this);
        auto precond = get_in(node->precond);
        /* Visit the effect statement. */
        node->effect->accept(*this);
        auto effect = get_in(node->effect);
        /* Create new PDDL action and store in node. */
        set_in(node, make_shared<pddl::Action>(node->name, signature, precond,
                                               effect));
    }

    void add_precond(std::vector<Predicate>& precond, Formula& c) {
        Predicate preDef = _predicates[c.key];
        std::vector<pair<std::string, vector<Type*>>> signature;
        int count = 0;
        if (c.children.size()) != (preDef.signature.size()) {
                throw SemanticError(
                    "Error: wrong number of arguments for "
                    "predicate " +
                    c.key +
                    " in precondition of "
                    "action");
            }
        for (Formula v : c.children) {
            signature.push_back({v.key, predDef.signature[count][1]});
            count++;
        }

        precond.push_back(Predicate(c.key, signature));
    }

    void visit_precondition_stmt(PreconditionStmt* node) {
        // Visits a PDDL precondition statement.
        std::vector<std::shared_ptr<Predicate>> precond;
        auto formula = node->formula;
        // For now we only allow 'and' in the precondition.
        if (formula->key == "and") {
            // Apply to all predicates in precondition.
            for (auto& c : formula->children) {
                if (!std::holds_alternative<std::string>(c->key)) {
                    throw SemanticError(
                        "Error predicate with non str key: " +
                        std::accumulate(formula->children.begin(),
                                        formula->children.end(), std::string(),
                                        [](std::string& acc, const auto& c2) {
                                            return acc + c2->key.name + " ";
                                        }));
                }
                // Check whether predicate was defined.
                if (_predicates.find(std::get<std::string>(c->key)) ==
                    _predicates.end()) {
                    throw SemanticError("Error unknown predicate " +
                                        std::get<std::string>(c->key) +
                                        " used in precondition of action");
                }
                // Call helper.
                add_precond(precond, c);
            }
        } else {
            // If not 'and' we only allow a single predicate in precondition.
            if (_predicates.find(formula->key) == _predicates.end()) {
                throw SemanticError(
                    "Error: predicate in precondition is not in CNF");
            }
            // Call helper.
            add_precond(precond, formula);
        }
        set_in(node, precond);
    }

    void visit_effect_stmt(EffectStmt* node) {
        // Visits a PDDL effect statement.
        Formula formula = node.formula;
        Effect effect;
        // For now we only allow 'and' in the effect.
        if (formula.key == "and") {
            for (Node c : formula.children) {
                // Call helper.
                add_effect(effect, c);
            }
        } else {
            // Call helper.
            add_effect(effect, formula);
        }
        // Store effect in node.
        set_in(node, effect);
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
        if (effect._predicates.find(nextPredicate.key) ==
            effect._predicates.end()) {
            throw SemanticError("Error: unknown predicate " +
                                nextPredicate.key +
                                " used in effect of action");
        }
        if (nextPredicate == nullptr) {
            throw SemanticError(
                "Error: NoneType predicate used in effect of action");
        }
        PredDef predDef = effect._predicates[nextPredicate.key];
        std::vector<std::pair<std::string, std::string>> signature;
        int count = 0;
        // Check whether predicate is used with the correct signature.
        if (nextPredicate.children.size() != predDef.signature.size()) {
            throw SemanticError(
                "Error: wrong number of arguments for predicate " +
                nextPredicate.key + " in effect of action");
        }
        // Apply to all parameters.
        for (Node v : nextPredicate.children) {
            if (isinstance(v.key, Variable)) {
                signature.push_back(std::make_pair(
                    v.key.name, predDef.signature[count].second));
            } else {
                signature.push_back(
                    std::make_pair(v.key, predDef.signature[count].second));
            }
            count++;
        }

        // Add a new effect to the positive or negative effects respectively.
        if (isNegative) {
            effect.dellist.add(Predicate(nextPredicate.key, signature));
        } else {
            effect.addlist.add(Predicate(nextPredicate.key, signature));
        }
    }
};

class TraversePDDLProblem : public PDDLVisitor {
   private:
    PDDLDomain _domain;
    std::unordered_map<Visitable*, std::string> _nodeHash;
    std::unordered_map<std::string, const Visitable*> _objects;
    ProblemDef* _problemDef;

   public:
    TraversePDDLProblem(PDDLDomain domain)
        : _domain(domain), _problemDef(nullptr) {}

    std::string get_in(Visitable* node) { return _nodeHash[node]; }
    void set_in(Visitable* node, std::string val) { _nodeHash[node] = val; }
    ProblemDef* get_problem() { return _problemDef; }

    void visit_problem_def(ProblemDef* node) {
        // Check whether the in the problem file referenced domain name matches
        // the supplied domain data structure.
        if (node->domainName != _domain.name) {
            throw std::runtime_error(
                "Error trying to parse problem file with domain: " +
                node->domainName +
                " together with a domain file that specifies domain: " +
                _domain.name);
        }
        // Apply to all object definitions.
        for (auto o : node->objects) {
            o->accept(this);
        }

        // Apply to the initial state definition.
        node->init->accept(this);
        auto init_list = get_in(node->init);

        // Apply to the goal state definition.
        node->goal->accept(this);
        auto goal_list = get_in(node->goal);

        // Create the problem data structure.
        _problemDef = new PDDLProblem(node->name, _domain, _objects, init_list,
                                      goal_list);
    }
    void visit_object(Object* node) {
        const PDDLType* type_def = nullptr;
        // Check for multiple definition of objects.
        if (_objects.find(node->name) != _objects.end()) {
            throw std::runtime_error(
                "Error multiple defines of object with name " + node->name);
        }
        // Untyped objects get the standard type 'object'.
        if (node->typeName == nullptr) {
            type_def = _domain.types["object"];
        } else {
            // Check whether used type was introduced in domain file.
            if (_domain.types.find(node->typeName) == _domain.types.end()) {
                throw std::runtime_error("Error: unknown type " +
                                         node->typeName +
                                         " used in object definition!");
            }
            type_def = _domain.types[node->typeName];
        }
        _objects[node->name] = type_def;
    }
    void visit_init_stmt(InitStmt* node) {
        std::vector<const PDDLPredicate*> initList;
        // Apply to all predicates in the statement.
        for (auto p : node->predicates) {
            p->accept(this);
            auto pred = get_in(p);
            initList.push_back(pred);
        }
        set_in(node, initList);
    }
    void add_goal(std::vector<pddl::Predicate>& goal, pddl::Formula& c) {
        /* Helper function for visit_goal_stmt.
         * Arguments:
         * - goal: a list of goals
         * - c: a formula representing a goal we want to add to the goal list
         */

        // Check whether predicate was introduced in domain file.
        if (this->_domain.predicates.find(c.key) ==
            this->_domain.predicates.end()) {
            throw SemanticError("Error: unknown predicate " + c.key +
                                " in goal definition");
        }

        // Get predicate from the domain data structure.
        pddl::PredicateDef& predDef = this->_domain.predicates[c.key];
        std::vector<std::pair<std::string, pddl::Type>> signature;
        size_t count = 0;

        // Check whether the predicate uses the correct signature.
        if (c.children.size() != predDef.signature.size()) {
            throw SemanticError(
                "Error: wrong number of arguments for "
                "predicate " +
                c.key + " in goal");
        }

        for (pddl::Formula& v : c.children) {
            signature.emplace_back(v.key, predDef.signature[count].second);
            count++;
        }

        // Add the predicate to the goal.
        goal.emplace_back(c.key, signature);
    }

    void visit_goal_stmt(GoalStmt& node) {
        /* Visits a PDDL-problem goal state statement. */

        Formula& formula = node.formula;
        std::vector<Predicate> goal;

        // For now we only allow 'and' in the goal.
        if (formula.key == "and") {
            for (pddl::Formula& c : formula.children) {
                if (!std::holds_alternative<std::string>(c.key)) {
                    throw SemanticError(
                        "Error predicate with non str key: " +
                        std::accumulate(
                            formula.children.begin(), formula.children.end(),
                            std::string(""),
                            [](std::string& s,
                               const pddl::Formula& f) -> std::string& {
                                return s += f.key.name + " ";
                            }));
                }
                // Call helper.
                add_goal(goal, c);
            }
        } else {
            // Only a single predicate is allowed then (s.a.)
            if (this->_domain.predicates.find(formula.key) ==
                this->_domain.predicates.end()) {
                throw SemanticError(
                    "Error: predicate in goal definition is not in CNF");
            }
            // Call helper.
            add_goal(goal, formula);
        }

        this->set_in(node, goal);
    }

    void visit_predicate_instance(Node* node) {
        vector<pair<string, string>> signature;
        // Visit all parameters.
        for (string o : node->parameters) {
            string o_type;
            // Check whether predicate was introduced in objects or domain
            // constants.
            if (!(_objects.count(o) || _domain.constants.count(o))) {
                throw SemanticError(
                    "Error: object " + o +
                    " referenced in problem definition - but not defined");
            } else if (_objects.count(o)) {
                o_type = _objects[o];
            } else if (_domain.constants.count(o)) {
                o_type = _domain.constants[o];
            }
            signature.emplace_back(o, o_type);
        }
        set_in(node, Predicate(node->name, signature));
    }
};

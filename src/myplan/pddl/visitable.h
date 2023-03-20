#pragma once
#include <functional>
#include <map>
#include <memory>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <vector>

#include "pddl.h"

enum FormulaType { TypeFormula, TypeVariable, TypeConstant };

class Visitable;

class PDDLVisitor {
   public:
    virtual void visit_domain_def(class DomainDef*) = 0;
    virtual void visit_problem_def(class ProblemDef*) = 0;
    virtual void visit_predicates_stmt(class PredicatesStmt*) = 0;
    virtual void visit_action_stmt(class ActionStmt*) = 0;
    virtual void visit_formula(class Formula*) = 0;
    virtual void visit_type(class Type*) = 0;
    virtual void visit_effect_stmt(class EffectStmt*) = 0;
    virtual void visit_precondition_stmt(class PreconditionStmt*) = 0;
    virtual void visit_requirements_stmt(class RequirementsStmt*) = 0;
    virtual void visit_predicate(class PredicateVar*) = 0;
    virtual void visit_variable(class Variable*) = 0;
    virtual void visit_init_stmt(class InitStmt*) = 0;
    virtual void visit_goal_stmt(class GoalStmt*) = 0;
    virtual void visit_predicate_instance(class PredicateInstance*) = 0;
    virtual void visit_object(class Object*) = 0;
    virtual void visit_keyword(class Keyword*) = 0;

    virtual ~PDDLVisitor() {}
};

// Get method by name
inline std::function<void(PDDLVisitor*, Visitable*)> getMethod(
    PDDLVisitor* visitor, const std::string& methodName) {
    static const std::map<std::string,
                          std::function<void(PDDLVisitor*, Visitable*)>>
        methodMap = {
            {"visit_domain_def",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_domain_def((DomainDef*)arg);
             }},
            {"visit_problem_def",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_problem_def((ProblemDef*)arg);
             }},
            {"visit_predicates_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_predicates_stmt((PredicatesStmt*)arg);
             }},
            {"visit_action_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_action_stmt((ActionStmt*)arg);
             }},
            {"visit_formula",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_formula((Formula*)arg);
             }},
            {"visit_type",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_type((Type*)arg);
             }},
            {"visit_effect_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_effect_stmt((EffectStmt*)arg);
             }},
            {"visit_precondition_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_precondition_stmt((PreconditionStmt*)arg);
             }},
            {"visit_requirements_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_requirements_stmt((RequirementsStmt*)arg);
             }},
            {"visit_predicate",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_predicate((PredicateVar*)arg);
             }},
            {"visit_variable",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_variable((Variable*)arg);
             }},
            {"visit_init_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_init_stmt((InitStmt*)arg);
             }},
            {"visit_goal_stmt",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_goal_stmt((GoalStmt*)arg);
             }},
            {"visit_predicate_instance",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_predicate_instance((PredicateInstance*)arg);
             }},
            {"visit_object",
             [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_object((Object*)arg);
             }},
            {"visit_keyword", [](PDDLVisitor* visitor, Visitable* arg) {
                 visitor->visit_keyword((Keyword*)arg);
             }}};

    auto it = methodMap.find(methodName);
    if (it == methodMap.end()) {
        throw std::runtime_error("Error: cannot call undefined method: " +
                                 methodName);
    }

    return it->second;
}

class Visitable {
   public:
    std::string _visitorName;
    Visitable(const std::string vname = "") : _visitorName(vname) {}

    void accept(PDDLVisitor* visitor) {
        if (_visitorName.empty())
            throw std::runtime_error(
                "Error: visit method of uninitialized visitor called!");
        auto m = getMethod(visitor, _visitorName);
        m(visitor, this);
    }
};

class Keyword : public Visitable {
    /*
     * This class represents the AST node for a PDDL keyword.
     */
   public:
    Keyword(std::string name) : name(name) { _visitorName = "visit_keyword"; }

    std::string name;
};
inline bool operator==(const Keyword& lhs, const Keyword& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.name == rhs.name;
}

class Variable : public Visitable {
    /*
     * This class represents the AST node for a PDDL variable.
     */
   public:
    Variable(std::string name_, std::vector<std::string> types_ = {})
        : name(name_), typed(!types_.empty()), types(types_) {
        _visitorName = "visit_variable";
    }
    Variable(std::string name_, std::string type_ = "<NULL>")
        : name(name_), typed(type_ != "<NULL>") {
        if (type_ != "<NULL>") {
            this->types = {type_};
        }
        _visitorName = "visit_variable";
    }

    std::string name;
    bool typed;
    std::vector<std::string> types;
};
inline bool operator==(const Variable& lhs, const Variable& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.name == rhs.name &&
           lhs.typed == rhs.typed;
}

class PredicateVar : public Visitable {
   public:
    PredicateVar(std::string name, std::vector<Variable> parameters = {})
        : name(name), parameters(parameters) {
        _visitorName = "visit_predicate";
    }

    std::string name;
    std::vector<Variable> parameters;
};
inline bool operator==(const PredicateVar& lhs, const PredicateVar& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.name == rhs.name;
}

class PredicateInstance : public Visitable {
    /*
     * This class represents the AST node for a PDDL predicate instance.
     */
   public:
    PredicateInstance(std::string name,
                      std::vector<std::string> parameters = {})
        : name(name), parameters(parameters) {
        _visitorName = "visit_predicate_instance";
    }

    std::string name;
    std::vector<std::string> parameters;
};
inline bool operator==(const PredicateInstance& lhs,
                       const PredicateInstance& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.name == rhs.name;
}

class RequirementsStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL requirements statement.
     */
   public:
    RequirementsStmt(std::vector<Keyword> keywords = {}) : keywords(keywords) {
        _visitorName = "visit_requirements_stmt";
    }

    std::vector<Keyword> keywords;
};

class DomainStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL domain statement.
     */
   public:
    DomainStmt(std::string name) : name(name) {
        _visitorName = "visit_domain_stmt";
    }

    std::string name;
};

class Formula : public Visitable {
    /*
     * This class represents the AST node for a PDDL formula,
     * as it can be specified for preconditions and effects.
     */
   public:
    Formula(std::string key = "<NULL>", std::vector<Formula> children = {},
            FormulaType type = TypeFormula)
        : key(key), children(children), type(type) {
        _visitorName = "visit_formula";
    }

    std::string key;
    std::vector<Formula> children;
    FormulaType type;
};
inline bool operator==(const Formula& lhs, const Formula& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.key == rhs.key &&
           lhs.type == rhs.type;
}

class PreconditionStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL action precondition.
     */
   public:
    PreconditionStmt(Formula formula) : formula(formula) {
        _visitorName = "visit_precondition_stmt";
    }

    Formula formula;
};
inline bool operator==(const PreconditionStmt& lhs,
                       const PreconditionStmt& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.formula == rhs.formula;
}

class EffectStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL action effect.
     */
   public:
    EffectStmt(Formula formula) : formula(formula) {
        _visitorName = "visit_effect_stmt";
    }

    Formula formula;
};
inline bool operator==(const EffectStmt& lhs, const EffectStmt& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.formula == rhs.formula;
}

class PredicatesStmt : public Visitable {
   public:
    PredicatesStmt(std::vector<PredicateVar> predicates) {
        this->_visitorName = "visit_predicates_stmt";
        this->predicates = predicates;
    }

    std::vector<PredicateVar> predicates;
};

class ActionStmt : public Visitable {
   public:
    ActionStmt(std::string name, std::vector<Variable> parameters,
               PreconditionStmt precond, EffectStmt effect)
        : precond(precond), effect(effect) {
        this->_visitorName = "visit_action_stmt";
        this->name = name;
        this->parameters = parameters;
    }

    std::string name;
    std::vector<Variable> parameters;
    PreconditionStmt precond;
    EffectStmt effect;
};
inline bool operator==(const ActionStmt& lhs, const ActionStmt& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.name == rhs.name &&
           lhs.precond == rhs.precond && lhs.effect == rhs.effect;
}

class DomainDef : public Visitable {
   public:
    DomainDef(std::string name,
              RequirementsStmt requirements = RequirementsStmt(),
              std::vector<Type*> types = {},
              PredicatesStmt predicates = PredicatesStmt({}),
              std::vector<ActionStmt> actions = {},
              std::vector<Object> constants = {})
        : name(name),
          types(types),
          requirements(requirements),
          predicates(predicates),
          actions(actions),
          constants(constants) {
        _visitorName = "visit_domain_def";
    }

    std::string name;
    RequirementsStmt requirements;
    std::vector<Type*> types;
    PredicatesStmt predicates;
    std::vector<ActionStmt> actions;
    std::vector<Object> constants;
};

class InitStmt : public Visitable {
   public:
    InitStmt(std::vector<PredicateInstance> predicates) {
        this->_visitorName = "visit_init_stmt";
        this->predicates = predicates;
    }

    std::vector<PredicateInstance> predicates;
};

inline bool operator==(const InitStmt& lhs, const InitStmt& rhs) {
    if (lhs._visitorName != rhs._visitorName) {
        return false;
    }
    if (lhs.predicates.size() != rhs.predicates.size()) {
        return false;
    }
    for (int i = 0; i < lhs.predicates.size(); i++) {
        if (!(lhs.predicates[i] == rhs.predicates[i])) {
            return false;
        }
    }
    return true;
}

class GoalStmt : public Visitable {
   public:
    GoalStmt(Formula formula) : formula(formula) {
        _visitorName = "visit_goal_stmt";
    }

    Formula formula;
};
inline bool operator==(const GoalStmt& lhs, const GoalStmt& rhs) {
    return lhs._visitorName == rhs._visitorName && lhs.formula == rhs.formula;
}

class ProblemDef : public Visitable {
   public:
    ProblemDef(std::string name, std::string domainName,
               std::vector<Object> objects, InitStmt init, GoalStmt goal)
        : name(name),
          domainName(domainName),
          objects(objects),
          init(init),
          goal(goal) {
        _visitorName = "visit_problem_def";
    }

    std::string name;
    std::string domainName;
    std::vector<Object> objects;
    InitStmt init;
    GoalStmt goal;
};

class Object : public Visitable {
   public:
    Object(std::string name, std::vector<std::string> types) {
        _visitorName = "visit_object";
        this->name = name;
        if (types.size() > 0) {
            this->typeName = types[0];
        }
    }
    Object(std::string name, std::string type) {
        _visitorName = "visit_object";
        this->name = name;
        this->typeName = type;
    }

    std::string name;
    std::string typeName;
};


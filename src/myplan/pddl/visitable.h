#include <functional>
#include <memory>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <vector>

#include "pddl.h"

enum FormulaType {
    TypeFormula,
    TypeVariable,
    TypeConstant
};

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
    virtual void visit_predicate(class Predicate*) = 0;
    virtual void visit_variable(class Variable*) = 0;
    virtual void visit_init_stmt(class InitStmt*) = 0;
    virtual void visit_goal_stmt(class GoalStmt*) = 0;
    virtual void visit_predicate_instance(class PredicateInstance*) = 0;
    virtual void visit_object(class Object*) = 0;
    virtual void visit_keyword(class Keyword*) = 0;

    virtual ~PDDLVisitor() {}
};

class Visitable {
   public:
    Visitable(const std::string& vname = "") : visitor_name_(vname) {}

    virtual void accept(PDDLVisitor* visitor) {
        if (visitor_name_.empty())
            throw std::runtime_error(
                "Error: visit method of uninitialized visitor called!");
        auto m = get_method(visitor, visitor_name_);
        if (!m)
            throw std::runtime_error("Error: cannot call undefined method: " +
                                     visitor_name_ + " on visitor");
        m(this);
    }

    const std::string& get_visitor_name() const { return visitor_name_; }
    void set_visitor_name(const std::string& vname) { visitor_name_ = vname; }

   private:
    std::string visitor_name_;
    std::function<void(Visitable*)> get_method;
};

class Keyword : public Visitable {
    /*
     * This class represents the AST node for a PDDL keyword.
     */
   public:
    Keyword(std::string name) : _visitorName("visit_keyword"), name(name) {}

    std::string _visitorName;
    std::string name;
};

class Variable : public Visitable {
    /*
     * This class represents the AST node for a PDDL variable.
     */
   public:
    Variable(std::string name, std::vector<Type> types = {})
        : _visitorName("visit_variable"),
          name(name),
          typed(!types.empty()),
          types(types) {}

    std::string _visitorName;
    std::string name;
    bool typed;
    std::vector<Type> types;
};

class PredicateInstance : public Visitable {
    /*
     * This class represents the AST node for a PDDL predicate instance.
     */
   public:
    PredicateInstance(std::string name,
                      std::vector<std::string> parameters = {})
        : _visitorName("visit_predicate_instance"),
          name(name),
          parameters(parameters) {}

    std::string _visitorName;
    std::string name;
    std::vector<std::string> parameters;
};

class RequirementsStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL requirements statement.
     */
   public:
    RequirementsStmt(std::vector<Keyword> keywords = {})
        : _visitorName("visit_requirements_stmt"), keywords(keywords) {}

    std::string _visitorName;
    std::vector<Keyword> keywords;
};

class DomainStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL domain statement.
     */
   public:
    DomainStmt(std::string name)
        : _visitorName("visit_domain_stmt"), name(name) {}

    std::string _visitorName;
    std::string name;
};

class Formula : public Visitable {
    /*
     * This class represents the AST node for a PDDL formula,
     * as it can be specified for preconditions and effects.
     */
   public:
    Formula(std::string key, std::vector<Formula> children = {},
            FormulaType type = TypeFormula)
        : _visitorName("visit_formula"),
          key(key),
          children(children),
          type(type) {}

    std::string _visitorName;
    std::string key;
    std::vector<Formula> children;
    FormulaType type;
};

class PreconditionStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL action precondition.
     */
   public:
    PreconditionStmt(Formula formula)
        : _visitorName("visit_precondition_stmt"), formula(formula) {}

    std::string _visitorName;
    Formula formula;
};

class EffectStmt : public Visitable {
    /*
     * This class represents the AST node for a PDDL action effect.
     */
   public:
    EffectStmt(Formula formula)
        : _visitorName("visit_effect_stmt"), formula(formula) {}

    std::string _visitorName;
    Formula formula;
};

class ActionStmt : public Visitable {
   public:
    ActionStmt(std::string name, std::vector<std::string> parameters,
               Formula* precond, Formula* effect) {
        _visitorName = "visit_action_stmt";
        this->name = name;
        this->parameters = parameters;
        this->precond = precond;
        this->effect = effect;
    }

    std::string _visitorName;
    std::string name;
    std::vector<std::string> parameters;
    Formula* precond;
    Formula* effect;
};

class PredicatesStmt : public Visitable {
   public:
    PredicatesStmt(std::vector<Predicate*> predicates) {
        _visitorName = "visit_predicates_stmt";
        this->predicates = predicates;
    }

    std::string _visitorName;
    std::vector<Predicate*> predicates;
};

class DomainDef : public Visitable {
   public:
    DomainDef(std::string name, RequirementsStmt* requirements = nullptr,
              std::vector<Type*> types = {},
              PredicatesStmt* predicates = nullptr,
              std::vector<ActionStmt*> actions = {},
              std::vector<Object*> constants = {}) {
        _visitorName = "visit_domain_def";
        this->name = name;
        this->requirements = requirements;
        this->types = types;
        this->predicates = predicates;
        this->actions = actions;
        this->constants = constants;
    }

    std::string _visitorName;
    std::string name;
    RequirementsStmt* requirements;
    std::vector<Type*> types;
    PredicatesStmt* predicates;
    std::vector<ActionStmt*> actions;
    std::vector<Object*> constants;
};

class ProblemDef : public Visitable {
   public:
    ProblemDef(std::string name, std::string domainName,
               std::vector<Object*> objects = {}, InitStmt* init = nullptr,
               GoalStmt* goal = nullptr) {
        _visitorName = "visit_problem_def";
        this->name = name;
        this->domainName = domainName;
        this->objects = objects;
        this->init = init;
        this->goal = goal;
    }

    std::string _visitorName;
    std::string name;
    std::string domainName;
    std::vector<Object*> objects;
    InitStmt* init;
    GoalStmt* goal;
};

class Object : public Visitable {
   public:
    Object(std::string name, std::string type) {
        _visitorName = "visit_object";
        this->name = name;
        this->typeName = type;
    }

    std::string _visitorName;
    std::string name;
    std::string typeName;
};

class InitStmt : public Visitable {
   public:
    InitStmt(std::vector<Predicate*> predicates) {
        _visitorName = "visit_init_stmt";
        this->predicates = predicates;
    }

    std::string _visitorName;
    std::vector<Predicate*> predicates;
};

class GoalStmt : public Visitable {
   public:
    GoalStmt(Formula* formula) {
        _visitorName = "visit_goal_stmt";
        this->formula = formula;
    }

    std::string _visitorName;
    Formula* formula;
};


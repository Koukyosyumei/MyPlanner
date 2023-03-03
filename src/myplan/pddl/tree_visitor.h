#include <memory>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <vector>

class Visitable;

class PDDLVisitor {
   public:
    virtual void visit_domain_def(class DomainDef* node) = 0;
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

class SemanticError : public std::exception {
   public:
    SemanticError(const std::string& value) : value_(value) {}

    virtual const char* what() const noexcept override {
        return value_.c_str();
    }

   private:
    std::string value_;
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




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

class Type : public Visitable {
    /*
     * This class represents the AST node for a PDDL type.
     */
   public:
    Type(std::string name, Type* parent = nullptr)
        : _visitorName("visit_type"), name(name), parent(parent) {}

    std::string _visitorName;
    std::string name;
    Type* parent;
};

class Predicate : public Visitable {
    /*
     * This class represents the AST node for a PDDL predicate.
     */
   public:
    Predicate(std::string name, std::vector<Variable> parameters = {})
        : _visitorName("visit_predicate"), name(name), parameters(parameters) {}

    std::string _visitorName;
    std::string name;
    std::vector<Variable> parameters;
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

class Formula : public Visitable {
    /*
     * This class represents the AST node for a PDDL formula,
     * as it can be specified for preconditions and effects.
     */
   public:
    Formula(std::string key, std::vector<Formula> children = {},
            Type type = TypeFormula)
        : _visitorName("visit_formula"),
          key(key),
          children(children),
          type(type) {}

    std


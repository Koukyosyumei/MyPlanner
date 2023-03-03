#include <iostream>
#include <set>
#include <string>
#include <unordered_map>
#include <vector>
#include <algorithm>

using namespace std;

class Type {
   public:
    Type(string name, Type* parent) : name_(name), parent_(parent) {
        transform(name_.begin(), name_.end(), name_.begin(), ::tolower);
    }
    string getName() const { return name_; }
    void setName(string name) { name_ = name; }
    Type* getParent() const { return parent_; }
    void setParent(Type* parent) { parent_ = parent; }

   private:
    string name_;
    Type* parent_;
};

class Predicate {
   public:
    Predicate(string name, vector<pair<string, vector<Type*>>> signature)
        : name_(name), signature_(signature) {}
    string getName() const { return name_; }
    void setName(string name) { name_ = name; }
    vector<pair<string, vector<Type*>>> getSignature() const {
        return signature_;
    }
    void setSignature(vector<pair<string, vector<Type*>>> signature) {
        signature_ = signature;
    }

   private:
    string name_;
    vector<pair<string, vector<Type*>>> signature_;
};

class Effect {
   public:
    void addToAddList(Predicate* pred) { addlist_.insert(pred); }
    void addToDelList(Predicate* pred) { dellist_.insert(pred); }

   private:
    set<Predicate*> addlist_;
    set<Predicate*> dellist_;
};

class Action {
   public:
    Action(string name, vector<pair<string, vector<Type*>>> signature,
           vector<Predicate*> precondition, Effect* effect)
        : name_(name),
          signature_(signature),
          precondition_(precondition),
          effect_(effect) {}
    string getName() const { return name_; }
    void setName(string name) { name_ = name; }
    vector<pair<string, vector<Type*>>> getSignature() const {
        return signature_;
    }
    void setSignature(vector<pair<string, vector<Type*>>> signature) {
        signature_ = signature;
    }
    vector<Predicate*> getPrecondition() const { return precondition_; }
    void setPrecondition(vector<Predicate*> precondition) {
        precondition_ = precondition;
    }
    Effect* getEffect() const { return effect_; }
    void setEffect(Effect* effect) { effect_ = effect; }

   private:
    string name_;
    vector<pair<string, vector<Type*>>> signature_;
    vector<Predicate*> precondition_;
    Effect* effect_;
};

class Domain {
   public:
    Domain(string name, unordered_map<string, Type*> types,
           vector<Predicate*> predicates, vector<Action*> actions,
           unordered_map<string, Type*> constants = {})
        : name_(name),
          types_(types),
          predicates_(predicates),
          actions_(actions),
          constants_(constants) {}
    string getName() const { return name_; }
    void setName(string name) { name_ = name; }
    unordered_map<string, Type*> getTypes() const { return types_; }
    void setTypes(unordered_map<string, Type*> types) { types_ = types; }
    vector<Predicate*> getPredicates() const { return predicates_; }
    void setPredicates(vector<Predicate*> predicates) {
        predicates_ = predicates;
    }
    vector<Action*> getActions() const { return actions_; }
    void setActions(vector<Action*> actions) { actions_ = actions; }
    unordered_map<string, Type*> getConstants() const { return constants_; }
    void setConstants(unordered_map<string, Type*> constants) {
        constants_ = constants;
    }

   private:
    string name_;
    unordered_map<string, Type*> types_;
    vector<Predicate*> predicates_;
    vector<Action*> actions_;
};

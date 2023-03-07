#pragma once
#include <algorithm>
#include <iostream>
#include <set>
#include <string>
#include <unordered_map>
#include <vector>

using namespace std;

class Type {
   public:
    Type(string name_, std::vector<string> parents_) : name(name_) {
        transform(name.begin(), name.end(), name.begin(), ::tolower);
        if (parents_.size() > 0) {
            parent = parents_[0];
        }
    }
    Type(string name_, string parent_) : name(name_), parent(parent_) {
        transform(name.begin(), name.end(), name.begin(), ::tolower);
    }

    string name;
    string parent;
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
    Domain(string name_, unordered_map<string, Type> types_,
           vector<Predicate> predicates_, vector<Action> actions_,
           unordered_map<string, Type> constants_ = {})
        : name(name_),
          types(types_),
          predicates(predicates_),
          actions(actions_),
          constants(constants_) {}
    string getName() const { return name; }
    void setName(string name) { name = name; }
    unordered_map<string, Type> getTypes() const { return types; }
    void setTypes(unordered_map<string, Type> types) { types = types; }
    vector<Predicate> getPredicates() const { return predicates; }
    void setPredicates(vector<Predicate> predicates) {
        predicates = predicates;
    }
    vector<Action> getActions() const { return actions; }
    void setActions(vector<Action> actions) { actions = actions; }
    unordered_map<string, Type> getConstants() const { return constants; }
    void setConstants(unordered_map<string, Type> constants) {
        constants = constants;
    }

   private:
    string name;
    unordered_map<string, Type> types;
    vector<Predicate> predicates;
    vector<Action> actions;
    std::unordered_map<std::string, Type> constants;
};

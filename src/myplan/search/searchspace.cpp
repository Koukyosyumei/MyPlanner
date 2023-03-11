#include <algorithm>
#include <iostream>
#include <vector>

class SearchNode {
   public:
    // Constructor
    SearchNode(std::vector<int> state, SearchNode* parent, std::string action,
               int g)
        : state_(state), parent_(parent), action_(action), g_(g) {}

    // Getter functions
    std::vector<int> state() const { return state_; }
    SearchNode* parent() const { return parent_; }
    std::string action() const { return action_; }
    int g() const { return g_; }

    // Setter functions
    void set_state(std::vector<int> state) { state_ = state; }
    void set_parent(SearchNode* parent) { parent_ = parent; }
    void set_action(std::string action) { action_ = action; }
    void set_g(int g) { g_ = g; }

    // Extract the solution from the search space
    std::vector<std::string> extract_solution() {
        std::vector<std::string> solution;
        SearchNode* node = this;
        while (node->parent() != nullptr) {
            solution.push_back(node->action());
            node = node->parent();
        }
        std::reverse(solution.begin(), solution.end());
        return solution;
    }

   private:
    std::vector<int> state_;
    SearchNode* parent_;
    std::string action_;
    int g_;
};

// Construct an initial search node
SearchNode make_root_node(std::vector<int> initial_state) {
    return SearchNode(initial_state, nullptr, "", 0);
}

// Construct a new search node linked to a parent node
SearchNode make_child_node(SearchNode* parent_node, std::string action,
                           std::vector<int> state) {
    return SearchNode(state, parent_node, action, parent_node->g() + 1);
}


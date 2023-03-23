#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

struct Trie {
    struct Node {
        std::unordered_map<std::string, int>
            next;    // vertex index of child state
        int common;  // the number of predicates that share this node
        std::vector<Operator *> applicables;
        Node() : common(0) {}
    };

    std::vector<Operator> *operators;
    std::vector<Node> nodes;
    int root;
    int num_operators;
    Trie(std::vector<Operator> *operators_)
        : operators(operators_), root(0), num_operators(operators_->size()) {
        nodes.push_back(Node());
    }

    void insert(const std::set<std::string> &states) {
        int node_id = 0;
        int next_id;
        for (std::string s : states) {
            if (nodes[node_id].next.find(s) != nodes[node_id].next.end()) {
                next_id = nodes[node_id].next[s];
            } else {
                int new_state_id = nodes[node_id].next.size();
                nodes[node_id].next.emplace(s, new_state_id);
                next_id = nodes[node_id].next[s];
                nodes.push_back(Node());
            }
            nodes[node_id].common++;
            node_id = next_id;
        }
        nodes[node_id].common++;
        for (int i = 0; i < num_operators; i++) {
            if (operators->at(i).applicable(states)) {
                nodes[node_id].applicables.push_back(&operators->at(i));
            }
        }
    }

    std::vector<Operator *> search(const std::set<std::string> &states) {
        int node_id = 0;
        int next_id;
        for (std::string s : states) {
            if (nodes[node_id].next.find(s) != nodes[node_id].next.end()) {
                next_id = nodes[node_id].next[s];
            } else {
                return {};
            }
            node_id = next_id;
        }
        return nodes[node_id].applicables;
    }
};

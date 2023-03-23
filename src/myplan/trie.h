#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

template <typename T>
struct Trie {
    struct Node {
        std::unordered_map<std::string, int>
            next;    // vertex index of child state
        int common;  // the number of predicates that share this node
        std::vector<T *> applicables;
        Node() : common(0) {}
    };

    std::vector<T> *operators;
    std::vector<Node> nodes;
    int root;
    int num_operators;

    Trie() {}
    Trie(std::vector<T> *operators_)
        : operators(operators_), root(0), num_operators(operators_->size()) {
        nodes.push_back(Node());
    }

    std::vector<std::pair<T *, std::unordered_set<std::string>>> insert(
        const std::set<std::string> &state) {
        int node_id = 0;
        int next_id;
        for (std::string s : state) {
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
        std::vector<std::pair<T *, std::unordered_set<std::string>>> successors;
        for (int i = 0; i < num_operators; i++) {
            if (operators->at(i).applicable(state)) {
                nodes[node_id].applicables.push_back(&operators->at(i));
                successors.push_back(std::make_pair(
                    &operators->at(i), operators->at(i).apply(state)));
            }
        }
        return successors;
    }

    std::vector<std::pair<T *, std::unordered_set<std::string>>> search(
        const std::set<std::string> &state) {
        int node_id = 0;
        int next_id;
        for (std::string s : state) {
            if (nodes[node_id].next.find(s) != nodes[node_id].next.end()) {
                next_id = nodes[node_id].next[s];
            } else {
                return insert(state);
            }
            node_id = next_id;
        }

        std::vector<std::pair<T *, std::unordered_set<std::string>>> successors;
        for (auto op : nodes[node_id].applicables) {
            successors.push_back(std::make_pair(op, op->apply(state)));
        }
        return successors;
    }
};

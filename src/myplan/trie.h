#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "task.h"

struct Trie {
    struct Node {
        std::unordered_map<std::string, int>
            next;    // vertex index of child state
        int common;  // the number of predicates that share this node
        std::vector<Operator *> applicables;
        Node() : common(0) {}
    };

    Task *task;
    std::vector<Node> nodes;
    int root;
    Trie(Task *task_) : task(task_), root(0) { nodes.push_back(Node()); }

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
        for (Operator &op : task->operators) {
            if (op.applicable(states)) {
                nodes[node_id].applicables.push_back(&op);
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

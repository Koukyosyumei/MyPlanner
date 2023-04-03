#pragma once
#include <algorithm>
#include <iostream>
#include <iterator>
#include <set>
#include <unordered_map>
#include <vector>

template <typename KeyType, typename ValueType>
class SetTrie {
   public:
    std::vector<std::vector<ValueType>> nested_result;
    struct Node {
        std::vector<Node*> children;
        bool flag_last = false;
        KeyType data;
        std::vector<ValueType> values;
        Node(KeyType data = KeyType(),
             std::vector<ValueType> values = std::vector<ValueType>())
            : data(data), values(values) {}

        bool operator==(const Node& other) const { return data == other.data; }
        bool operator!=(const Node& other) const { return data != other.data; }
        bool operator<(const Node& other) const { return data < other.data; }
        bool operator<=(const Node& other) const { return data <= other.data; }
        bool operator>(const Node& other) const { return data > other.data; }
        bool operator>=(const Node& other) const { return data >= other.data; }
    };

    SetTrie() : root(new Node()) {}

    SetTrie(std::vector<std::pair<std::set<KeyType>, std::vector<ValueType>>>
                iterable)
        : root(new Node()) {
        for (const auto& pair : iterable) {
            assign(pair.first, pair.second);
        }
    }

    //~SetTrie() { destroy(root); }

    void assign(std::set<KeyType> keyset, ValueType value) {
        int valcnt = 0;
        assignHelper(root, keyset.begin(), keyset.end(), value, valcnt);
    }

    std::vector<ValueType> subsets(std::set<KeyType>& keyset) {
        std::vector<ValueType> result;
        std::vector<KeyType> path;

        subsetsHelper(root, keyset, path, result);

        // for (int i = 0; i < nested_result.size(); i++) {
        //     for (int j = 0; j < nested_result[i].size(); j++) {
        //         result.push_back(nested_result[i][j]);
        //     }
        // }
        // nested_result.clear();
        return result;
    }

   private:
    Node* root;

    /*
    void destroy(Node* node) {
        for (auto child : node->children) {
            destroy(child);
        }
        delete node;
    }
    */

    void assignHelper(Node* node, typename std::set<KeyType>::const_iterator it,
                      typename std::set<KeyType>::const_iterator end,
                      ValueType& value, int& valcnt) {
        if (it != end) {
            auto data = *it;
            // find the first child with this data
            auto nextNodeItr =
                std::find_if(node->children.begin(), node->children.end(),
                             [data](Node* n) { return n->data == data; });
            Node* nextNodePtr;
            if (nextNodeItr == node->children.end()) {
                nextNodePtr = new Node(data);
                node->children.push_back(nextNodePtr);
            } else {
                nextNodePtr = *(nextNodeItr);
            }
            it++;
            assignHelper(nextNodePtr, it, end, value, valcnt);
        } else {
            node->flag_last = true;
            node->values.push_back(value);
            valcnt = (int)node->values.size();
        }
    }

    void subsetsHelper(Node* node, std::set<KeyType>& keyset,
                       std::vector<KeyType>& path,
                       std::vector<ValueType>& result) {
        path.push_back(node->data);

        if (node->flag_last) {
            result.insert(result.end(), node->values.begin(),
                          node->values.end());
            // result.emplace_back(node->values);
        }

        for (Node* child : node->children) {
            if (keyset.find(child->data) != keyset.end()) {
                subsetsHelper(child, keyset, path, result);
            }
        }

        path.pop_back();
    }
};

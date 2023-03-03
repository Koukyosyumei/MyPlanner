#include <stack>
#include <vector>

template<typename T>
class LispIterator {
public:
    // Constructor taking a nested_list<T> as argument
    LispIterator(const nested_list<T>& list) {
        if (list.is_vector()) {
            // If the nested_list is a vector, initialize the stack with the
            // vector and the index of the first element
            stack_.push({list.get_vector(), 0});
        } else {
            // If the nested_list is a value, initialize the stack with a null
            // vector pointer and the value itself
            stack_.push({nullptr, &list});
        }
    }

    // Return true if the iterator is not at the end of the list
    bool has_next() const {
        return !stack_.empty();
    }

    // Get the next value in the list and advance the iterator
    T next() {
        if (!has_next()) {
            throw std::runtime_error("Iterator has reached the end of the list");
        }

        // Get the top element on the stack
        auto [vector_ptr, value_ptr] = stack_.top();

        if (vector_ptr) {
            // If the element is a vector, push the next element onto the stack
            auto& vector = *vector_ptr;
            std::size_t& index = stack_.top().second;
            if (index < vector.size() - 1) {
                stack_.push({vector_ptr, index + 1});
            } else {
                stack_.pop();
            }
            return vector[index];
        } else {
            // If the element is a value, pop it from the stack
            stack_.pop();
            if (has_next()) {
                // If there are more elements on the stack, check if the top
                // element is a vector and advance it if necessary
                auto& [next_vector_ptr, next_value_ptr] = stack_.top();
                if (next_vector_ptr) {
                    auto& next_vector = *next_vector_ptr;
                    std::size_t& next_index = stack_.top().second;
                    if (next_index < next_vector.size() - 1) {
                        stack_.push({next_vector_ptr, next_index + 1});
                    }
                }
            }
            return *value_ptr;
        }
    }

private:
    // Stack of nested_list vectors and values
    std::stack<std::pair<std::vector<nested_list<T>>*, const T*>> stack_;
};


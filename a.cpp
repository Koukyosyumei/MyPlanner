#include <any>
#include <functional>
#include <iostream>
#include <memory>
#include <queue>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

int main() {
    size_t x1 = 0;
    x1 ^= std::hash<std::string>{}("1");
    std::cout << x1 << std::endl;
    x1 ^= std::hash<std::string>{}("2");
    std::cout << x1 << std::endl;
    x1 ^= std::hash<std::string>{}("1");
    std::cout << x1 << std::endl;
    size_t x2 = 0;
    x2 ^= std::hash<std::string>{}("2");
    std::cout << x2 << std::endl;
    size_t x3 = 0;
    x3 ^= std::hash<std::string>{}("3");
    std::cout << x3 << std::endl;
}

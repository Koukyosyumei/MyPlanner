#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>
using namespace std;

class ParseError : public std::exception {
    std::string message;

   public:
    ParseError(const std::string& msg) : message(msg) {}

    const char* what() const noexcept override { return message.c_str(); }
};

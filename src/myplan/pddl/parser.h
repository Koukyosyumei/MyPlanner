#include <stdexcept>
#include <string>
#include <vector>

#include "lisp_iterators.h"
#include "visitable.h"

Keyword parse_keyword(LispIterator iter) {
    std::string name = iter.get_word();
    if (name.empty()) {
        throw std::invalid_argument("Error empty keyword found");
    }

    if (name[0] != ':') {
        throw std::invalid_argument(
            "Error keywords have to start with a colon ':'");
    }

    return Keyword(name.substr(1));
}

std::vector<Keyword> parse_keyword_list(LispIterator &iter) {
    std::vector<Keyword> result;
    while (!iter.peek().isnull()) {
        result.push_back(parse_keyword(iter.next()));
    }
    return result;
}

std::string parse_name(LispIterator iter, std::string father) {
    if (!iter.peek().is_word()) {
        throw std::runtime_error(
            "Error predicate statement must conta a name!");
    }
    return iter.next().get_word();
}

std::string _parse_string_helper(LispIterator iter) { return iter.get_word(); }

Variable parse_variable(LispIterator iter) {
    std::string name = iter.get_word();
    if (name == "") {
        throw runtime_error("Error empty variale found");
    }

    if (name[0] != '?') {
        throw runtime_error("Error variables must start with a '?'");
    }
    return Variable(name);
}

DomainStmt _parse_domain_helper(LispIterator iter, std::string keyword) {
    if (!iter.try_match(keyword)) {
        throw runtime_error(
            "Error domain statement must be present before \"\"domain name!");
    }
    std::string name = parse_name(iter, "domain");
    return DomainStmt(name);
}

DomainStmt parse_domain_stmt(LispIterator it) {return _parse_domain_helper(it, "domain")}
DomainStmt parse_problem_domain_stmt(LispIterator it) {return _parse_domain_helper(it, ":domain")}


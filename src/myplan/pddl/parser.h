#include <stdexcept>
#include <string>

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


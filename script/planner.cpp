#include <unistd.h>

#include <cassert>
#include <chrono>
#include <fstream>
#include <future>
#include <iostream>
#include <limits>
#include <numeric>
#include <string>
#include <utility>
#include <vector>

#include "myplan/grounding.h"
#include "myplan/pddl/parser.h"
#include "myplan/search/breadth_first_search.h"

using namespace std;

string domain_file_path = "domain.pddl";
string problem_file_path = "task.pddl";
string solution_file_path = "task.soln";

void parse_args(int argc, char* argv[]) {
    int opt;
    while ((opt = getopt(argc, argv, "d:p:s:")) != -1) {
        switch (opt) {
            case 'd':
                domain_file_path = string(optarg);
                break;
            case 'p':
                problem_file_path = string(optarg);
                break;
            case 's':
                solution_file_path = string(optarg);
                break;
            default:
                printf("unknown parameter %s is specified", optarg);
                printf("Usage: %s [-d] [-p] [-s] ...\n", argv[0]);
                break;
        }
    }
}

int main(int argc, char* argv[]) {
    parse_args(argc, argv);

    Parser parser = Parser(domain_file_path, problem_file_path);
    printf("Parsing Domain %s \n", domain_file_path.c_str());
    Domain domain = parser.parse_domain(true);
    printf("Parsing Problem %s \n", problem_file_path.c_str());
    printf("%d Predicates parsed (list style) \n",
           (int)domain.predicates.size());
    printf("%d Predicates parsed (dict style) \n",
           (int)domain.predicates_dict.size());
    printf("%d Actions parsed (list style) \n", (int)domain.actions.size());
    printf("%d Actions parsed (dict style) \n",
           (int)domain.actions_dict.size());
    printf("%d Constants parsed \n", (int)domain.constants.size());

    Problem* problem_ptr = parser.parse_problem(domain, true);
    std::cout << "Print out parser problemdef's objects" << std::endl;
    for (auto& obp : problem_ptr->objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second.name << " ";
        if (obp.second.parent != nullptr) {
            std::cout << obp.second.parent->name;
        }
        std::cout << std::endl;
    }
    Problem problem = *problem_ptr;
    std::cout << "Print out referecend parser problemdef's objects"
              << std::endl;
    for (auto& obp : problem.objects) {
        std::cout << obp.first << " ";
        std::cout << obp.second.name << " ";
        if (obp.second.parent != nullptr) {
            std::cout << obp.second.parent->name;
        }
        std::cout << std::endl;
    }
    printf("%d Objects parsed \n", (int)problem.objects.size());

    printf("Grounding start: %s \n", problem.name.c_str());
    Task task = ground(problem);
    printf("Grounding end: %s \n", problem.name.c_str());
    printf("%d Variables created \n", (int)task.facts.size());
    printf("%d Operators created \n", (int)task.operators.size());

    printf("Search start: %s \n", task.name.c_str());
    chrono::system_clock::time_point start, end;
    start = chrono::system_clock::now();
    vector<string> solution = breadth_first_search(task);
    end = chrono::system_clock::now();
    float elapsed =
        chrono::duration_cast<chrono::milliseconds>(end - start).count();
    printf("Search time is complete %f [ms] \n", elapsed);

    printf("Length of solution is %d \n", (int)solution.size());
    ofstream solution_file;
    solution_file.open(solution_file_path, ios::out);
    for (string op : solution) {
        solution_file << op << "\n";
    }
}

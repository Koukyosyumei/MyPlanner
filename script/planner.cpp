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

void parse_args(int argc, char *argv[]) {
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

int main(int argc, char *argv[]) {
    parse_args(argc, argv);
    Parser parser = Parser(domain_file_path, problem_file_path);
    printf("Parsing Domain %s", domain_file_path.c_str());
    Domain domain = parser.parse_domain(true);
    printf("Parsing Problem %s", problem_file_path.c_str());
    Problem problem = parser.parse_problem(domain, true);
    printf("Grounding start: %s", problem.name.c_str());
    Task task = ground(problem);
    printf("Grounding end: %s", problem.name.c_str());

    printf("Search start: %s", task.name.c_str());
    chrono::system_clock::time_point start, end;
    start = chrono::system_clock::now();
    vector<string> solution = breadth_first_search(task);
    end = chrono::system_clock::now();
    float elapsed =
        chrono::duration_cast<chrono::milliseconds>(end - start).count();
    printf("Search time is complete %f [ms]", elapsed);

    ofstream solution_file;
    solution_file.open(solution_file_path, ios::out);
    for (string op : solution) {
        solution_file << op << "\n";
    }
}

#include <unistd.h>

#include <cassert>
#include <chrono>
#include <fstream>
#include <future>
#include <iostream>
#include <limits>
#include <numeric>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

#include "myplan/grounding.h"
#include "myplan/heuristic/base.h"
#include "myplan/heuristic/landmarks.h"
#include "myplan/heuristic/relaxation.h"
#include "myplan/pddl/parser.h"
#include "myplan/search/astar.h"
#include "myplan/search/breadth_first_search.h"

using namespace std;

string search_algorithm = "bfs";
string heuristic_type = "blind";
string domain_file_path = "domain.pddl";
string problem_file_path = "task.pddl";
string solution_file_path = "task.soln";

void parse_args(int argc, char* argv[]) {
    int opt;
    domain_file_path = argv[1];
    problem_file_path = argv[2];
    while ((opt = getopt(argc, argv, "s:H:o:")) != -1) {
        switch (opt) {
            case 's':
                search_algorithm = string(optarg);
                break;
            case 'H':
                heuristic_type = string(optarg);
                break;
            case 'o':
                solution_file_path = string(optarg);
                break;
            default:
                printf("unknown parameter %s is specified", optarg);
                printf("Usage: %s [-s] [-H] [-o] ...\n", argv[0]);
                break;
        }
    }
}

int main(int argc, char* argv[]) {
    parse_args(argc, argv);

    Parser parser = Parser(domain_file_path, problem_file_path);
    printf("Parsing Domain %s \n", domain_file_path.c_str());
    Domain* domain = parser.parse_domain(true);
    printf("Parsing Problem %s \n", problem_file_path.c_str());
    // printf("%d Predicates parsed (list style) \n",
    //        (int)domain->predicates.size());
    printf("%d Predicates parsed \n", (int)domain->predicates_dict.size());
    // printf("%d Actions parsed (list style) \n", (int)domain->actions.size());
    printf("%d Actions parsed \n", (int)domain->actions_dict.size());
    printf("%d Constants parsed \n", (int)domain->constants.size());

    Problem* problem_ptr = parser.parse_problem(domain, true);
    Problem problem = *problem_ptr;
    printf("%d Objects parsed \n", (int)problem.objects.size());

    printf("Grounding start: %s \n", problem.name.c_str());
    Task task = ground(problem);
    printf("Grounding end: %s \n", problem.name.c_str());
    printf("%d Variables created \n", (int)task.facts.size());
    printf("%d Operators created \n", (int)task.operators.size());
    printf("%d Keys registered \n", (int)task.encoding_map.size());

    printf("Search start: %s \n", task.name.c_str());
    chrono::system_clock::time_point start, end;
    vector<int> solution;
    if (search_algorithm == "bfs") {
        start = chrono::system_clock::now();
        solution = breadth_first_search(task);
    } else if (search_algorithm == "astar") {
        if (heuristic_type == "blind") {
            BlindHeuristic heuristic(task);
            start = chrono::system_clock::now();
            solution = astar(task, heuristic);
        } else if (heuristic_type == "goalcount") {
            GoalCountHeuristic heuristic(task);
            start = chrono::system_clock::now();
            solution = astar(task, heuristic);
        } else if (heuristic_type == "landmark") {
            LandmarkHeuristic heuristic(task);
            start = chrono::system_clock::now();
            solution = astar(task, heuristic);

        } else if (heuristic_type == "hadd") {
            hAddHeuristic heuristic(task);
            start = chrono::system_clock::now();
            solution = astar(task, heuristic);
        } else if (heuristic_type == "hmax") {
            hMaxHeuristic heuristic(task);
            start = chrono::system_clock::now();
            solution = astar(task, heuristic);
        } else {
            throw invalid_argument("given heuristic type is not supported");
        }
    } else {
        throw invalid_argument("given search algorithm is not supported");
    }
    end = chrono::system_clock::now();
    float elapsed =
        chrono::duration_cast<chrono::milliseconds>(end - start).count();
    printf("Search time is complete %f [ms] \n", elapsed);

    printf("Length of solution is %d \n", (int)solution.size());
    ofstream solution_file;
    solution_file.open(solution_file_path, ios::out);
    for (int op : solution) {
        solution_file << task.action_id2name[op] << "\n";
    }

    /*
    std::string validate_cmd = "validate " + domain_file_path + " " +
                               problem_file_path + " " + solution_file_path;
    std::cout << validate_cmd << std::endl;
    auto ret = system(validate_cmd.c_str());
    if (ret == -1) {
        cout << "a child process for validator could not be created, or"
                "its status could not be retrieved!"
             << endl;
    }
    */
}

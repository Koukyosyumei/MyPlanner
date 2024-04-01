# MyPlan

PDDL Solver implemented in C++ from scratch. This project is inspiered by [aibasel/pyperplan](https://github.com/aibasel/pyperplan).

## Install

```bash
git clone https://github.com/Koukyosyumei/MyPlan.git
cd MyPlan

./script/install.sh
```

## Usage

- example
```bash
myplan benchmarks/transport/domain.pddl benchmarks/transport/task01.pddl
```

- options
```
-s type of search algorithm (`bfs` | `astar`). Default to `bfs`.
-h type of heuristic function (`blind` | `goalcount` | `landmark` | `hadd` | `hmax`). Default to `blind`.
-o path to output file. Default to `task.soln`.
```
## Test

```bash
./script/test.sh
```

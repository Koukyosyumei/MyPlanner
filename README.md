# MyPlan

## Install

```bash
git clone https://github.com/Koukyosyumei/MyPlan.git
cd MyPlan

./script/install.sh
```

## Usage

Example
```bash
myplan benchmarks/transport/domain.pddl benchmarks/transport/task01.pddl
```

Options

```
-s type of search algorithm (`bfs` | `astar`). Default to `bfs`.
-h type of heuristic function (`blind` | `goalcount` | `landmark`). Default to `blind`.
-o path to output file. Default to `task.soln`.
```


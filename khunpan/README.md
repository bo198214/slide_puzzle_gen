Khun Pan is an old 1-person game from Thailand.
It is very intricate, so really worth solving it with a planner.
I created a PDDL generator which can generally be used for slide puzzles (e.g. also the 15puzzle PDDL can easily be generated).

The library to use is the khunpan_gen.py file it consists only of one function `domain_probelem`.
Usage could be 
```
import khunpan_gen

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None, "th", "th", None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

domain_name = "khunpan"
problem_name = "khunpan"

domain, problem = khunpan_gen.domain_problem(domain_name, problem_name, init_state, target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))
```

The counter option:
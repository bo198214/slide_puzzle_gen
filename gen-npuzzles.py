#!/usr/bin/env python3
import slide_puzzle_gen


def gen(name,init_state,target_state):
    domain, problem = slide_puzzle_gen.domain_problem(name, name, init_state, target_state)
    print(domain, file=open("npuzzle/" + name + '-domain.pddl', 'w'))
    print(problem, file=open("npuzzle/" + name + '-problem.pddl', 'w'))


init_state = [
    [ None, 8, 7],
    [ 6, 5, 4],
    [ 3, 2, 1]
]

target_state = {
    (1,3): 1, (2,3): 2, (3,3): 3,
    (1,2): 4, (2,2): 5, (3,2): 6,
    (1,1): 7, (2,1): 8, (3,1): None
}

gen("n8puzzle01",init_state,target_state)

#Easy to solve

init_state = [
    ["t15", "t02", "t01", "t12"],
    ["t08", "t05", "t06", "t11"],
    ["t04", "t09", "t10", "t07"],
    ["t03", "t14", "t13", None]
]

target_state = {
    (1,4): None,  (2,4): "t01", (3,4): "t02", (4,4): "t03",
    (1,3): "t04", (2,3): "t05", (3,3): "t06", (4,3): "t07",
    (1,2): "t08", (2,2): "t09", (3,2): "t10", (4,2): "t11",
    (1,1): "t12", (2,1): "t13", (3,1): "t14", (4,1): "t15"
}

gen("n15puzzle01",init_state,target_state)

# A bit more difficult to solve

init_state = [
    ["t15", "t14", "t13", "t12"],
    ["t11", "t10", "t09", "t08"],
    ["t07", "t06", "t05", None],
    ["t03", "t02", "t01", "t04"]
]

target_state = {
    (1,4): "t01", (2,4): "t02", (3,4): "t03", (4,4): "t04",
    (1,3): "t05", (2,3): "t06", (3,3): "t07", (4,3): "t08",
    (1,2): "t09", (2,2): "t10", (3,2): "t11", (4,2): "t12",
    (1,1): "t13", (2,1): "t14", (3,1): "t15", (4,1): None
}

gen("n15puzzle02",init_state,target_state)
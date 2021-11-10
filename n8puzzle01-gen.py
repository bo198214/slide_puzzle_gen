import slide_puzzle_gen

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

name="n8puzzle01-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state)

print(domain, file=open(name + '-domain.pddl', 'w'))
print(problem, file=open(name + '-problem.pddl', 'w'))
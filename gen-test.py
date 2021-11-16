#!/usr/bin/env python3
import glob
import os.path
from subprocess import check_call, check_output
import slide_puzzle_gen

#VAL_DIR='/Users/bo198214/workspace/planner/VAL/build/macos64/Release/bin'
def write_files(name,domain,problem):
    domain_file = "test/" + name + '-domain.pddl'
    problem_file = "test/" + name + '-problem.pddl'
    print(domain, file=open(domain_file, 'w'))
    print(problem, file=open(problem_file, 'w'))
    plan_files = glob.glob('solve-downward/test/' + name + '.txt.*')
    try:
        check_output(["Parser", domain_file, problem_file])
    except Exception as e:
        print(e)

    for plan_file in ['solve-downward/test/' + name + '.txt']+plan_files:
        if os.path.isfile(plan_file):
            try:
                check_output(["Validate", domain_file,problem_file,plan_file])
                print(plan_file + " ok.")
            except Exception as e:
                print(e)

def battery(title,init_state,target_state, initial_tile='tsq'):
    name = title
    domain, problem = slide_puzzle_gen.domain_problem(name, name, init_state, target_state)
    write_files(name, domain, problem)

    name = title + "-ac"
    domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,
                                                   adapted_counter=True)
    write_files(name,domain,problem)

    name = title + "-ac-it"
    domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,
                                                   adapted_counter=True, initial_tile=initial_tile)
    write_files(name,domain,problem)

    name = title + "-ac-typing"
    domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,
                                                   adapted_counter=True,typing=True)
    write_files(name,domain,problem)

    name = title + "-ac-it-typing"
    domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,
                                                   adapted_counter=True,initial_tile=initial_tile,typing=True)
    write_files(name,domain,problem)

    name = title + "-typing"
    domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,
                                                   typing=True)
    write_files(name,domain,problem)


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

battery("n8puzzle",init_state,target_state,initial_tile=1)

init_state = [
    ["tv1",  None, "tv2", "tv3"],
    ["tv1",  None, "tv2", "tv3"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["to1", "to2", "to3", "to4"]
]
target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

battery("khunpan07",init_state,target_state)

battery("trivial01",[[1,None]],{(2,1):1},initial_tile=1)

### or test

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [ None,  "th",  "th",  None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(1, 1): ["to1","to2","to3","to4"]}

name = "or-khunpan01"
domain, problem = slide_puzzle_gen.domain_problem(name, name, init_state, target_state)
write_files(name, domain, problem)

### field test
### move @ to o
sokoban_desc = """
-----------
-----#-----
-----#-----
-----#-----
-----#-----
@----#----o
"""

name = "field01"
problem = slide_puzzle_gen.problem_sokoban(name,sokoban_desc)
problem_file = "test/" + name + '-problem.pddl'
plan_file = "solve-downward/test/" + name + '.txt'
print(problem, file=open(problem_file, 'w'))
check_output(["Validate", "sokoban-domain.pddl", problem_file, plan_file])

maze = """
 #@############################################################# 
 #     #       #   #       #     #           #             #   # 
 ##### ### ### # ### # ### # ### ####### ### ######### ### # # # 
 #   #   #   # #     # # # # # # #       #   #         #   # # # 
 # ##### ### # ####### # # # # # # ####### ### # ####### ### # # 
 #     #     #         # #   #   #     #   #   # #     #   # # # 
 # ### ################# ##### ### ### ### # # ### ### ### ### # 
 #   #         #     #   #     #     #   # # # #     #   #   # # 
 ########### # # ### ### # ############# # ### # ####### ### # # 
 #           #   #       # #             #   #     #     #     # 
 # ####### ####### ####### # ############### ####### ########### 
 # #     # #   #     #   # #           #   #       # #         # 
 # ### # # # # ####### # # # ######### # # ####### # # ####### # 
 #   # #   # #       # #   # #         # #       # # #   #   # # 
 ### # ##### ####### # ####### ######### ### ##### # ### # ### # 
 #   #   # # #       #   #     #   #     # #           # #   # # 
 # ##### # # # ######### # ##### ### ##### ########### # # # # # 
 # #       # #   #   #   # #       # #       #   #     # # # # # 
 # ######### ### # # # ### ####### # ####### # # ####### ### # # 
 #             #   # #   #       # #     #   # #             # # 
 ################### ### ####### # ##### # ### ############### # 
 #               #   #   #       #         #   #     #   #     # 
 # ############# # # # ### ####### ######### ### ### ### # ### # 
 # #   #       #   # # # #     # # # #     #     #   #   #   # # 
 # # # ##### ####### # # # ### # # # # ### ####### ### ##### ### 
 #   # #   #       # # #     # #     # # #     #   #       #   # 
 ##### # # ### ### # # ####### ####### # # ### # ######### ### # 
 #     # #   #   #   #       #       # # # #   #   #         # # 
 # ##### ### ### ########### ####### # # # ####### # ####### # # 
 #         # #           #   #       # # #     #   # #       # # 
 ########### ########### # ### ####### # ##### # ### ######### # 
 #         #     #     # # #       #   #     # #     #         # 
 # ####### ##### # ### ### ####### # ##### # # ##### # ######### 
 # #     #     #   # #   #       # #       # #       #         # 
 # # ### ##### # ### ### ####### # ######### ################# # 
 #     #     # #   #   # #     # #       #   # #     #         # 
 ########### # ### ### # # # ### # # ##### ### # ### # ####### # 
 #           # #       #   # #   # #       #   # # # #     #   # 
 # ########### ############# # ### ########### # # # # ### # ### 
 #       #   #             # # # #   #         # #   #   # # # # 
 ####### ### ############# # # # ### # ####### # ### ##### # # # 
 #       #         #     # # # #   #   #     # #   #       #   # 
 # ####### ####### # ##### # # ### ####### # # ### ############# 
 #   #         # #   #       # #           # #   #             # 
 # # # ####### # # ### ####### # ########### # ############### # 
 # # # #     # #   #   # #     #   #   #     # #               # 
 # # ### ### # ##### ### # ##### # # # ####### # ############# # 
 # #   #   # #   #       #   #   #   #         # #         #   # 
 ##### ### # ### # ######### ####### ########### ##### ##### ### 
 #     #   #   #   #       #       #       #   #     #       # # 
 # ##### ##### ##### ##### ####### ######### # ##### ####### # # 
 #           #     # #   #   #   #           #   #   #     #   # 
 # ######### ##### # ### # ### # ############### # ### ### ### # 
 # #     #       # #     #     #     #         # #       #   # # 
 ### ### ######### ##### ######### # ####### ### # ######### # # 
 #   #     #   #   #   # #       # #         #   # #         # # 
 # ####### # # # # ### # ####### # ######### # ##### ######### # 
 #       #   #   # #   #         #   # #   # # #     #       # # 
 # ##### ######### # ########### ### # # # # # # ##### ##### # # 
 # #     #           #         # # # #   #   # #   #   #     # # 
 # # ################# ### ##### # # ######### ### # ######### # 
 # #                     #         #               #           # 
 #############################################################o# 
"""

name = "maze01"
problem = slide_puzzle_gen.problem_sokoban(name,maze)
problem_file = "test/" + name + '-problem.pddl'
plan_file = "solve-downward/test/" + name + '.txt'
print(problem, file=open(problem_file, 'w'))
check_output(["Validate", "sokoban-domain.pddl", problem_file, plan_file])

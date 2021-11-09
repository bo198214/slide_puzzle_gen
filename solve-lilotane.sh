#!/bin/bash -x 

name=$1
shift

PLANNER_DIR=$HOME/workspace/planner/lilotane

plan_file=$(pwd)/${name}_downward.txt
domain_file=$(pwd)/${name}-domain.pddl
problem_file=$(pwd)/${name}-problem.pddl
cd "$PLANNER_DIR"
./lilotane $domain_file $problem_file "$@"
#./run_and_verify.sh $domain_file $problem_file
#./pandaPIparser $domain_file $problem_file
#!/bin/bash
#For installing fast-downward on your computer see https://www.fast-downward.org/ObtainingAndRunningFastDownward

name=$1
shift

PLANNER_DIR=$HOME/workspace/planner/arvandherd2014
mkdir -p solve-arvandherd
plan_file=$(pwd)/solve-arvandherd/${name}.txt
log_file=$(pwd)/solve-arvandherd/${name}.log
domain_file=$(pwd)/${name}-domain.pddl
problem_file=$(pwd)/${name}-problem.pddl
cd "$PLANNER_DIR"
./plan $domain_file $problem_file $plan_file | tee $log_file

#!/bin/bash
#For installing fast-downward on your computer see https://www.fast-downward.org/ObtainingAndRunningFastDownward

name=$1
shift

PLANNER_DIR=$HOME/workspace/planner/downward
mkdir -p solve-downward
sas_file=$(pwd)/solve-downward/$name.sas
plan_file=$(pwd)/solve-downward/${name}_downward.txt
log_file=$(pwd)/solve-downward/${name}_downward.log
domain_file=$(pwd)/${name}-domain.pddl
problem_file=$(pwd)/${name}-problem.pddl
cd "$PLANNER_DIR"
./fast-downward.py --alias=seq-sat-lama-2011 --sas-file=$sas_file --plan-file=$plan_file "$@" $domain_file $problem_file | tee $log_file
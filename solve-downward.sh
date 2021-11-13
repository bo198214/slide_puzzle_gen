#!/bin/bash -e

#For installing fast-downward on your computer see https://www.fast-downward.org/ObtainingAndRunningFastDownward

PLANNER_DIR=$HOME/workspace/planner/downward


domain_name=$1
shift
problem_name=${1:-$domain_name}
shift || true

sas_file=$(pwd)/solve-downward/$problem_name.sas
plan_file=$(pwd)/solve-downward/${problem_name}.txt
log_file=$(pwd)/solve-downward/${problem_name}.log
domain_file=$(pwd)/${domain_name}-domain.pddl
problem_file=$(pwd)/${problem_name}-problem.pddl

mkdir -p "$(dirname "$log_file")"
cd "$PLANNER_DIR"
./fast-downward.py --alias=seq-sat-lama-2011 --sas-file=$sas_file --plan-file=$plan_file "$@" $domain_file $problem_file | tee $log_file
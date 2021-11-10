#!/bin/bash -x 

name=$1
shift

PLANNER_DIR=$HOME/workspace/planner/lilotane
mkdir solve-lilotane
plan_file=$(pwd)/solve-lilotane/${name}.txt
log_file=$(pwd)/solve-lilotane/${name}.log
domain_file=$(pwd)/${name}-domain.hddl
problem_file=$(pwd)/${name}-problem.hddl
cd "$PLANNER_DIR"
./lilotane $domain_file $problem_file "$@" | tee $log_file
#./run_and_verify.sh $domain_file $problem_file
#./pandaPIparser $domain_file $problem_file

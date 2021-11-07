#!/bin/bash
name=$1

DOWNWARD_DIR=$HOME/workspace/planner/downward
sas_file=$(pwd)/$name.sas
plan_file=$(pwd)/${name}_downward.txt
domain_file=$(pwd)/${name}-domain.pddl
problem_file=$(pwd)/${name}-problem.pddl
cd "$DOWNWARD_DIR"
./fast-downward.py --alias=seq-sat-lama-2011 --sas-file=$sas_file --plan-file=$plan_file $domain_file $problem_file
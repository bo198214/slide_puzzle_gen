#!/bin/bash

#For installing arvandherd2014 on your computer see https://github.com/rickvalenzano/arvandherd2014

PLANNER_DIR=${PLANNER_DIR:-$HOME/workspace/planner/arvandherd2014}
dir_name=solve-arvandherd

if [ -f "$1" ]
then
  domain_name=${1%-domain.pddl}
  problem_name=${2%-problem.pddl}
  shift
  shift
else
  domain_name=$1
  problem_name=$1
  shift
fi

sas_file=$(pwd)/$dir_name/$problem_name.sas
plan_file=$(pwd)/$dir_name/${problem_name}.txt
log_file=$(pwd)/$dir_name/${problem_name}.log
domain_file=$(pwd)/${domain_name}-domain.pddl
problem_file=$(pwd)/${problem_name}-problem.pddl

mkdir -p "$(dirname "$log_file")"
cd $PLANNER_DIR
./plan $domain_file $problem_file $plan_file | tee $log_file

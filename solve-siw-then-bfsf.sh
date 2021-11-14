#!/bin/bash -e

# See https://github.com/LAPKT-dev/LAPKT-public for installing siw-then-bfsf

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

dir_name=solve-siw-then-bfsf

plan_file=$(pwd)/$dir_name/${problem_name}.txt
log_file=$(pwd)/$dir_name/${problem_name}.log
domain_file=$(pwd)/${domain_name}-domain.pddl
problem_file=$(pwd)/${problem_name}-problem.pddl

mkdir -p "$(dirname "$log_file")"

siw-then-bfsf --domain $domain_file --problem $problem_file --output $plan_file | tee $log_file
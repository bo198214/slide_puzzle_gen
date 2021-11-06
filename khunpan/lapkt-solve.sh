#!/bin/bash -x

name=$1
docker run -it -v $(pwd):/pddl lapkt/lapkt-public ./siw-then-bfsf\
  --domain /pddl/${name}-domain.pddl\
  --problem /pddl/${name}-problem.pddl\
  --output /pddl/${name}_plan.txt
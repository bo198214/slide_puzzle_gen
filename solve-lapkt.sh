#!/bin/bash -x

#For obtaining the docker image see https://hub.docker.com/r/lapkt/lapkt-public/

name=$1
mkdir -p solve-lapkt
docker run -it -v $(pwd):/pddl lapkt/lapkt-public ./siw-then-bfsf\
  --domain /pddl/${name}-domain.pddl\
  --problem /pddl/${name}-problem.pddl\
  --output /pddl/solve-lapkt/${name}_lapkt.txt
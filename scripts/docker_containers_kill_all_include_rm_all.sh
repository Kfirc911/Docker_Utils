#!/bin/bash -eu
#This script kills all running docker containers and then removes them.

for x in $(docker ps -q)
do
	docker kill "$x"
done
for x in $(docker container ls --all -q)
do
	docker container rm "$x"
done

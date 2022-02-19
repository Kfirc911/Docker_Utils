#!/bin/bash -eu
#This script kills all running docker containers without remove them from the list


for x in $(docker ps -q)
do
	docker kill "$x"
done

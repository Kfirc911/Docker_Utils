#!/bin/bash -eu

#this script is for killing all running docker and containers and remove them
for x in $(docker ps -q)
do
	docker kill "$x"
done
for x in $(docker container ps  -a)
do
	docker container rm "$x"
done

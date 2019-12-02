#!/bin/bash

for container in $(docker ps -a | awk '/Exited/ {print $1}')
do
  docker rm ${container}
done


for image in $(docker images --filter "dangling=true" --format "{{.ID}}")
do
  docker rmi ${image}
done

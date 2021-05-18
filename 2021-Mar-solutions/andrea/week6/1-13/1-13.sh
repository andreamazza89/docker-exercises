#!/bin/bash

# 1.13: Hello, backend!
#
# This exercise is mandatory
#
# Clone, fork or download a project from https://github.com/docker-hy/material-applications/tree/main/example-backend.
#
# Create a Dockerfile for the project (example-backend) and give a command so that the project runs in a docker container with port 8080 published.
#
# When you start the container and navigate to http://localhost:8080/ping you should get a “pong” as response.
#
# Submit the Dockerfile and the command used.
#
# Do not alter the code of the project

IMAGE=docker-exercises:1-13
CONTAINER_NAME=1_13

docker build . -t $IMAGE

docker run --rm --name=$CONTAINER_NAME -d -p 8080:8080 $IMAGE

sleep 6 # this is not a good way to wait for a service to be ready, but that's outside the scope of this exercise

curl http://localhost:8080/ping

docker container stop $CONTAINER_NAME

docker image rm $IMAGE

# got a pong

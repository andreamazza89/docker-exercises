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

git clone https://github.com/docker-hy/material-applications.git

docker build . -t hello-backend

docker container run --rm --name backend -p 8080:8080 hello-backend
#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
docker container run --name a1 -d nginx
docker container run --name b2 -d nginx
docker container run --name c3 -d nginx
#
# Stop 2 of the containers leaving 1 up.
docker container stop a1 b2
#
# Submit the output for docker ps -a which shows 2 stopped containers and one running.
docker container ls -a

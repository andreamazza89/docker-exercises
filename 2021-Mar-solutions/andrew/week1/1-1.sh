#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
#
docker container run -d --name one nginx
docker container run -d --name two nginx
docker container run -d --name three nginx

# Stop 2 of the containers leaving 1 up.
#
docker container stop one
docker container stop two

# Submit the output for docker ps -a which shows 2 stopped containers and one running.


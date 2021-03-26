#! /bin/bash

# 1.2 Cleanup
# We’ve left containers and a image that won’t be used anymore and are taking space, as docker ps -as and docker images will reveal.
#
# Clean the docker daemon from all images and containers.
#
docker stop container-three
docker container prune
docker image prune
#
# Submit the output for docker ps -a and docker images
#
docker ps -a
docker images
#
# CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
# REPOSITORY   TAG       IMAGE ID   CREATED   SIZE

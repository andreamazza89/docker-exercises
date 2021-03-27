#! /bin/bash

# 1.2 Cleanup
# We’ve left containers and a image that won’t be used anymore and are taking space, as docker ps -as and docker images will reveal.
#
# Clean the docker daemon from all images and containers.
#
docker container stop three
docker container prune
docker image rm nginx
# Submit the output for docker ps -a and docker images


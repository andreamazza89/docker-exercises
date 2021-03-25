#! /bin/bash

# 1.2 Cleanup
# We’ve left containers and a image that won’t be used anymore and are taking space, as docker ps -as and docker images will reveal.
#
# Clean the docker daemon from all images and containers.

docker container stop three
docker container prune -f
docker image rm nginx
#
# Submit the output for docker ps -a and docker images

docker ps -a
docker image ls -a

# CONTAINER ID        IMAGE                               COMMAND                  CREATED             STATUS              PORTS                      NAMES
# 3724c87c3951        timescale/timescaledb:latest-pg12   "docker-entrypoint.s…"   9 months ago        Up 24 hours         127.0.0.1:5432->5432/tcp   postgres

# REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
# timescale/timescaledb   latest-pg12         62850f3b364f        9 months ago        169MB

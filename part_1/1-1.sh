#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
#
docker run -d --name one nginx
docker run -d --name two nginx
docker run -d --name three nginx

# Stop 2 of the containers leaving 1 up.
#
docker stop one
docker stop two

# Submit the output for docker ps -a which shows 2 stopped containers and one running.
docker container ps -a

# CONTAINER ID        IMAGE                               COMMAND                  CREATED              STATUS                          PORTS                      NAMES
# c22cc40cff52        nginx                               "/docker-entrypoint.…"   About a minute ago   Up About a minute               80/tcp                     three
# 3cc7f6c43f1c        nginx                               "/docker-entrypoint.…"   About a minute ago   Exited (0) About a minute ago                              two
# 34cac8e95051        nginx                               "/docker-entrypoint.…"   About a minute ago   Exited (0) About a minute ago                              one
# 3724c87c3951        timescale/timescaledb:latest-pg12   "docker-entrypoint.s…"   9 months ago         Up 24 hours                     127.0.0.1:5432->5432/tcp   postgres

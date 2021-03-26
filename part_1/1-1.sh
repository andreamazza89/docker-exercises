#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
#
docker run -d --name container-one nginx
docker run -d --name container-two nginx
docker run -d --name container-three nginx
#
# Stop 2 of the containers leaving 1 up.
#
docker stop container-one
docker stop container-two
#
# Submit the output for docker ps -a which shows 2 stopped containers and one running.
#
# CONTAINER ID   IMAGE                                              COMMAND                  CREATED              STATUS                          PORTS                                                                                                          NAMES
# cdf53fea45f7   nginx                                              "/docker-entrypoint.…"   About a minute ago   Up About a minute               80/tcp                                                                                                         container-three
# 67bb69f2c35f   nginx                                              "/docker-entrypoint.…"   About a minute ago   Exited (0) About a minute ago                                                                                                                  container-two
# 0607965d32fe   nginx                                              "/docker-entrypoint.…"   About a minute ago   Exited (0) About a minute ago                                                                                                                  container-one

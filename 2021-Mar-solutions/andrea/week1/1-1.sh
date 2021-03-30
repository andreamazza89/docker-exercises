#! /bin/bash

set -eu

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

docker container stop one two

# Submit the output for docker ps -a which shows 2 stopped containers and one running.

docker ps -a

# 65df173b65c87a83e58a8cc4b0b8b4cceb3a382d4034349f1f0e09e48b35d462
# bd632d3525be55f2a129e1b34138044331f52169cd75b3ef4855464d6ee70c36
# 3308ab49c4c21b214612acef376413671048e3631c760eb73fb69fee98b26df2
# one
# two
# CONTAINER ID   IMAGE     COMMAND                  CREATED        STATUS                              PORTS     NAMES
# 3308ab49c4c2   nginx     "/docker-entrypoint.…"   1 second ago   Up Less than a second               80/tcp    three
# bd632d3525be   nginx     "/docker-entrypoint.…"   1 second ago   Exited (0) Less than a second ago             two
# 65df173b65c8   nginx     "/docker-entrypoint.…"   1 second ago   Exited (0) Less than a second ago             one

#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
#
# Stop 2 of the containers leaving 1 up.
#
# Submit the output for docker ps -a which shows 2 stopped containers and one running.

CONTAINER ID        IMAGE                               COMMAND                   CREATED              STATUS                          PORTS                     NAMES
40c7880be8d8        maven                               "/usr/local/bin/mvn-…"    About a minute ago   Exited (1) About a minute ago                             elastic_poincare
b17d0d11ac38        ubuntu                              "/bin/bash"               4 minutes ago        Exited (0) 4 minutes ago                                  stupefied_keldysh
4162c420d938        nginx                               "/docker-entrypoint.…"    6 minutes ago        Up 6 minutes                    80/tcp                    affectionate_lederberg

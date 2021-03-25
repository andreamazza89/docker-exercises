#! /bin/bash

# 1.2 Cleanup
# We’ve left containers and a image that won’t be used anymore and are taking space, as docker ps -as and docker images will reveal.
#
# Clean the docker daemon from all images and containers.
#
# Submit the output for docker ps -a and docker images
➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                      PORTS     NAMES
10fdc9645235   maven     "/usr/local/bin/mvn-…"   6 minutes ago    Exited (1) 5 minutes ago              romantic_torvalds
41f76109f087   nginx     "/docker-entrypoint.…"   9 minutes ago    Up 9 minutes                80/tcp    vigilant_wilson
ff5e08fd76ca   ubuntu    "/bin/bash"              9 minutes ago    Exited (0) 9 minutes ago              recursing_cartwright
3e5365f93a80   nginx     "/docker-entrypoint.…"   15 minutes ago   Exited (0) 15 minutes ago             youthful_lovelace

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker container rm romantic_torvalds
romantic_torvalds

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker container rm youthful_lovelace
youthful_lovelace

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                      PORTS     NAMES
41f76109f087   nginx     "/docker-entrypoint.…"   10 minutes ago   Up 10 minutes               80/tcp    vigilant_wilson
ff5e08fd76ca   ubuntu    "/bin/bash"              10 minutes ago   Exited (0) 10 minutes ago             recursing_cartwright

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker container rm recursing_cartwright
recursing_cartwright

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS     NAMES
41f76109f087   nginx     "/docker-entrypoint.…"   10 minutes ago   Up 10 minutes   80/tcp    vigilant_wilson

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker container stop vigilant_wilson
vigilant_wilson

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker container rm vigilant_wilson
vigilant_wilson

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✗ ]
docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
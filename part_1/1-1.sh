#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
#
# Stop 2 of the containers leaving 1 up.
#
# Submit the output for docker ps -a which shows 2 stopped containers and one running.

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker container run -d ubuntu
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
5d3b2c2d21bb: Pull complete
3fc2062ea667: Pull complete
75adf526d75b: Pull complete
Digest: sha256:b4f9e18267eb98998f6130342baacaeb9553f136142d40959a1b46d6401f0f2b
Status: Downloaded newer image for ubuntu:latest
ff5e08fd76ca552d94e8d8637942507d672f3b8e74678f2665ee3a2b6a6f63c8

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker container run -d nginx
41f76109f08757f6524997539bd0fbd1947562db9f152a32173bbd22672080b1

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker container run -d maven
Unable to find image 'maven:latest' locally
latest: Pulling from library/maven
63e877180dd1: Pull complete
2d9ff0a89ff9: Pull complete
24a670a0f608: Pull complete
684a1f1376a6: Pull complete
aa2b844e04b4: Pull complete
fa1666259697: Pull complete
b16ac55a75b9: Pull complete
Digest: sha256:a14628a26fbf156eb621b2f58421a86f4d9ab6971d28747ac29d0d12cec99fcd
Status: Downloaded newer image for maven:latest
10fdc964523582bb5bed68eebda99ae1a8fc0c5fc3a7f88cf968a3b327b56889

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker container stop recursing_cartwright
recursing_cartwright

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker container stop romantic_torvalds
romantic_torvalds

➜  In ~/Desktop/Engineering/docker-exercises on branch trunk · [ ✓ ]
docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS                      PORTS     NAMES
10fdc9645235   maven     "/usr/local/bin/mvn-…"   About a minute ago   Exited (1) 56 seconds ago             romantic_torvalds
41f76109f087   nginx     "/docker-entrypoint.…"   4 minutes ago        Up 4 minutes                80/tcp    vigilant_wilson
ff5e08fd76ca   ubuntu    "/bin/bash"              4 minutes ago        Exited (0) 4 minutes ago              recursing_cartwright
3e5365f93a80   nginx     "/docker-entrypoint.…"   10 minutes ago       Exited (0) 10 minutes ago             youthful_lovelace
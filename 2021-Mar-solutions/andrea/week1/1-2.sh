#! /bin/bash

set -eu

# 1.2 Cleanup
# We’ve left containers and a image that won’t be used anymore and are taking space, as docker ps -as and docker images will reveal.
#
# Clean the docker daemon from all images and containers.
#

docker container stop one two three
docker system prune -f -a

# Submit the output for docker ps -a and docker images
docker ps -a
docker image ls -a

# one
# two
# three
# Deleted Containers:
# 0903def8b3d7ed53e5277e16a63343b2fa11d97e01c0fd1c75844fa38766436e
# 99054dadbd4a21176a8ae8e84c0e202c5ba9e653679810e053c6e6022d3a39c3
# c5c7821c0beeef692ab3067ab81233ff8602c01a007116365d6a43ebf26c84dd
#
# Deleted Images:
# untagged: nginx:latest
# untagged: nginx@sha256:d2925188effb4ddca9f14f162d6fba9b5fab232028aa07ae5c1dab764dca8f9f
# deleted: sha256:6084105296a952523c36eea261af38885f41e9d1d0001b4916fa426e45377ffe
# deleted: sha256:3b172069177f8982c1df589c155bfb7482b3f3fb90ef284a34013e0b63e0fe6c
# deleted: sha256:03c12533ac40107c4b01c74df19b35e63948474b7cfbc9829ab26b094f90de31
# deleted: sha256:123667e139767c1fe3bbf4310a80eaca32ab2944b42d0e0863d66dc09215a2e9
# deleted: sha256:96c2aa1177733f403679550776da7e9dcb3b4f0e46e0548467e013017dd8ee23
# deleted: sha256:2df57a38a8fcc8e4e459ade73b0f8d85b19ed4f6b39eb4686eddd5118b99c256
# deleted: sha256:14a1ca976738392ffa2ae4e54934ba28ab9cb756e924ad9297a4795a4adbfdf6
#
# Total reclaimed space: 133.1MB
# CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
# REPOSITORY   TAG       IMAGE ID   CREATED   SIZE

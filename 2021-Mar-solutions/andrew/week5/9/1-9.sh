#!/bin/bash

# 1.9: Volumes
#
# In this exercise we won’t create a new Dockerfile.
#
# Image devopsdockeruh/simple-web-service creates the a timestamp every two seconds to /usr/src/app/text.log when it’s not given a command. Start the container with bind mount so that the logs are created into your filesystem.
#
# Submit the command you used to complete the exercise.
touch text.log

docker container run --name web-service --rm -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service

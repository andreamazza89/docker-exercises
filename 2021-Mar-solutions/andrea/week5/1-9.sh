#!/bin/bash

# 1.9: Volumes
#
# In this exercise we won’t create a new Dockerfile.
#
# Image devopsdockeruh/simple-web-service creates the a timestamp every two seconds to /usr/src/app/text.log when it’s not given a command. Start the container with bind mount so that the logs are created into your filesystem.
#
# Submit the command you used to complete the exercise.

CONTAINER_NAME=mount
LOGS_DESTINATION=$(pwd)/logs/text.log
mkdir logs
touch ./logs/text.log

docker run -d --rm --name="$CONTAINER_NAME" -v "$LOGS_DESTINATION":/usr/src/app/text.log devopsdockeruh/simple-web-service
sleep 5 ## some arbitrary amount of time to let the container does write some logs
docker container stop "$CONTAINER_NAME"
cat "$LOGS_DESTINATION"

rm "$LOGS_DESTINATION"
rmdir logs

# here is the output of cat command:

# 2021-04-30 05:43:46 +0000 UTC
# 2021-04-30 05:43:48 +0000 UTC
# 2021-04-30 05:43:50 +0000 UTC

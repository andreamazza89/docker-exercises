#!/bin/bash

# 2.1
# Exercises in part 2 should be done using docker-compose

# Without a command devopsdockeruh/simple-web-service will create logs into its /usr/src/app/text.log.

# Create a docker-compose.yml file that starts devopsdockeruh/simple-web-service and saves the logs into your filesystem.

# Submit the docker-compose.yml, make sure that it works simply by running docker-compose up if the log file exists.

mkdir logs
touch logs/text.log

docker-compose -f ./docker-compose.2_1.yml up -d
sleep 10
docker-compose -f ./docker-compose.2_1.yml down

cat logs/text.log
rm logs/text.log
rmdir logs


# cat's output:

#2021-06-03 11:08:43 +0000 UTC
#2021-06-03 11:08:45 +0000 UTC
#2021-06-03 11:08:47 +0000 UTC
#2021-06-03 11:08:49 +0000 UTC
#2021-06-03 11:08:51 +0000 UTC
#Secret message is: 'You can find the source code here: https://github.com/docker-hy'
#2021-06-03 11:08:53 +0000 UTC
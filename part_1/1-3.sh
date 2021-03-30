#! /bin/bash

# 1.3: Secret message
# Now that we’ve warmed up it’s time to get inside a container while it’s running!

# Image devopsdockeruh/simple-web-service:ubuntu will start a container that outputs logs into a file. Go inside the container and use tail -f ./text.log to follow the logs. Every 10 seconds the clock will send you a “secret message”.

CONTAINER=$(docker run -d --rm devopsdockeruh/simple-web-service:ubuntu)
sleep 15

docker exec $CONTAINER tail -n 100 ./text.log | grep "message" | head -1

docker stop $CONTAINER > /dev/null

# Submit the secret message and command(s) given as your answer.

# ➜ ./1-3.sh
# Secret message is: 'You can find the source code here: https://github.com/docker-hy'

#! /bin/bash

# 1.3: Secret message
# Now that we’ve warmed up it’s time to get inside a container while it’s running!

# Image devopsdockeruh/simple-web-service:ubuntu will start a container that outputs logs into a file. Go inside the container and use tail -f ./text.log to follow the logs. Every 10 seconds the clock will send you a “secret message”.
docker container run -it -d --rm --name secret-service devopsdockeruh/simple-web-service:ubuntu 

# Submit the secret message and command(s) given as your answer.

docker container logs -f secret-service
# logs show 'Wrote text to /usr/src/app/text.log'

docker container exec -it secret-service bash
cat text.log
# Secret message is: 'You can find the source code here: https://github.com/docker-hy'


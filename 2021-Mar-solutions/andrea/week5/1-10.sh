#!/bin/bash

# 1.10: Ports open
# 
# In this exercise we won’t create a new Dockerfile.
# 
# Image devopsdockeruh/simple-web-service will start a web service in port 8080 when given the command “server”. From 1.7 you should have an image ready for this. Use -p flag to access the contents with your browser. The output to your browser should be something like: { message: "You connected to the following path: ...
# 
# Submit your used commands for this exercise.
#

CONTAINER_NAME=port

docker run -d --rm --name="$CONTAINER_NAME" -p 8080:8080 fd312adc88e0 server
curl localhost:8080

docker container stop "$CONTAINER_NAME"

# curl output:

# {"message":"You connected to the following path: /","path":"/"}

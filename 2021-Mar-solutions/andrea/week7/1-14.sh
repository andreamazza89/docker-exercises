#!/bin/bash

# 1.14: Environment

# Start both frontend-example and backend-example with correct ports exposed and add ENV to Dockerfile with necessary information from both READMEs (front,back).

# Ignore the backend configurations until frontend sends requests to _backend_url_/ping when you press the button.

# You know that the configuration is ready when the button for 1.14 of frontend-example responds and turns green.

# Do not alter the code of either project

# Submit the edited Dockerfiles and commands used to run.


# The frontend will first talk to your browser. Then the code will be executed from your browser and that will send a message to backend.

# TIP: When configuring web applications keep browser developer console ALWAYS open, F12 or cmd+shift+I when the browser window is open. Information about configuring cross origin requests is in README of the backend project.

# TIP: Developer console has multiple views, most important ones are Console and Network. Exploring the Network tab can give you a lot of information on where messages are being sent and what is received as response!

FRONTEND_IMAGE=frontend-for-1.14
FRONTEND_CONTAINER=frontend-1.14
BACKEND_IMAGE=backend-for-1.14
BACKEND_CONTAINER=backend-1.14

#docker build ../week6/1-12 -t $FRONTEND_IMAGE
#docker build ../week6/1-13 -t $BACKEND_IMAGE

docker run --rm --name=$BACKEND_CONTAINER -d -p 8080:8080 -e REQUEST_ORIGIN='http://localhost:5000' $BACKEND_IMAGE
docker run --rm --name=$FRONTEND_CONTAINER -d -p 5000:5000 -e REACT_APP_BACKEND_URL='http://localhost:8080' $FRONTEND_IMAGE

sleep 30 # gives me time to go to the browser and check it's working... Got | Success! Great job!

docker container stop $BACKEND_CONTAINER
docker container stop $FRONTEND_CONTAINER

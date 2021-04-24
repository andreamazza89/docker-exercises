#! /bin/bash

# Run docker run -it devopsdockeruh/pull_exercise

# It will wait for your input
# Navigate through docker hub to find the docs and Dockerfile that was used to create the image

# Read the Dockerfile and/or docs to learn what input will get the application to answer a “secret message”

# Submit the secret message and command(s) given to get it as your answer.

curl -s https://hub.docker.com/v2/repositories/devopsdockeruh/pull_exercise/ | jq '.full_description'

# "This is the readme, use input \"basics\" to complete this exercise.\n"

echo "basics" | docker run --rm -i devopsdockeruh/pull_exercise

# Give me the password: You found the correct password. Secret message is:
# "This is the secret message"

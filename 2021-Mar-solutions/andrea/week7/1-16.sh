#!/bin/bash

# 1.16: Heroku

# Pushing to heroku happens in a similar way. A project has already been prepared at devopsdockeruh/heroku-example so lets pull that first. Note that the image of the project is quite large.

# Go to https://www.heroku.com/ and create a new app there and install heroku CLI. You can find additional instructions from Deploy tab under Container Registry. Tag the pulled image as registry.heroku.com/_app_/_process-type_, process-type can be web for this exercise. The app should be your project name in heroku.

# Then push the image to heroku with docker push registry.heroku.com/_app_/web and release it using the heroku CLI: heroku container:release web (you might need to login first: heroku container:login)

# For this exercise return the url in which the released application is.

# You could also use the heroku CLI to build and push, but since we didn’t want to build anything this time it was easier to just tag the image.

HEROKU_VOLUME_NAME=heroku-home
docker volume create $HEROKU_VOLUME_NAME

HEROKU_IMAGE=my-heroku

TARGET_IMAGE=registry.heroku.com/docker-exercises/web:latest

docker build ./dockerised-heroku -t $HEROKU_IMAGE
docker tag devopsdockeruh/heroku-example:latest $TARGET_IMAGE

docker push $TARGET_IMAGE

## the following commands I did manually to login the heroku container (the volume mount is to retain the credentials file across multiple ephemeral containers)
# docker run --rm -it --mount type=volume,source=heroku-home,destination=/root $HEROKU_IMAGE:latest login
# docker run --rm -it --mount type=volume,source=heroku-home,destination=/root $HEROKU_IMAGE:latest auth:token
## and then login docker with the registry using the token above to push the image
# docker login -username=<> -password=<> registry.heroku.com
# docker push registry.heroku.com/docker-exercises/web:final

docker run --rm -it --mount type=volume,source=$HEROKU_VOLUME_NAME,destination=/root $HEROKU_IMAGE container:release web
# did not actually get to run the above as pushing took forever

docker volume rm $HEROKU_VOLUME_NAME
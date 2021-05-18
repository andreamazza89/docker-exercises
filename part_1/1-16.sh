#!/bin/bash

# 1.16: Heroku

# Pushing to heroku happens in a similar way. A project has already been prepared at devopsdockeruh/heroku-example so lets pull that first. Note that the image of the project is quite large.

# Go to https://www.heroku.com/ and create a new app there and install heroku CLI. You can find additional instructions from Deploy tab under Container Registry. Tag the pulled image as registry.heroku.com/_app_/_process-type_, process-type can be web for this exercise. The app should be your project name in heroku.

# Then push the image to heroku with docker push registry.heroku.com/_app_/web and release it using the heroku CLI: heroku container:release web (you might need to login first: heroku container:login)

# For this exercise return the url in which the released application is.

# You could also use the heroku CLI to build and push, but since we didn’t want to build anything this time it was easier to just tag the image.

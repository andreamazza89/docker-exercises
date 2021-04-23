#! /bin/bash

# By default our devopsdockeruh/simple-web-service:alpine doesn’t have a CMD. It instead uses ENTRYPOINT to declare which application is run.

# We’ll talk more about ENTRYPOINT in the next section, but you already know that the last argument in docker run can be used to give command.

# As you might’ve noticed it doesn’t start the web service even though the name is “simple-web-service”. A command is needed to start the server!

# Try docker run devopsdockeruh/simple-web-service:alpine hello. The application reads the argument but will inform that hello isn’t accepted.

# In this exercise create a Dockerfile and use FROM and CMD to create a brand new image that automatically runs the server. Tag the new image as “web-server”

# Return the Dockerfile and the command you used to run the container.

# Running the built “web-server” image should look like this:

# $ docker run web-server
# [GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

# [GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.

#- using env:   export GIN_MODE=release
#- using code:  gin.SetMode(gin.ReleaseMode)

#[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
#[GIN-debug] Listening and serving HTTP on :8080

# (We don’t have any method of accessing the web service yet. As such confirming that the console output is the same will suffice.)

docker build . -t web-server

docker run --rm --name=my-server web-server

## (Got the following output):

# [GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.
#
# [GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
#  - using env:	export GIN_MODE=release
#  - using code:	gin.SetMode(gin.ReleaseMode)
#
# [GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
# [GIN-debug] Listening and serving HTTP on :8080

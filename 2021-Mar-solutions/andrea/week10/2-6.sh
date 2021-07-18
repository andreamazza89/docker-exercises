#!/bin/bash

# Add database to example backend.
#
# Lets use a postgres database to save messages. We won’t need to configure a volume since the official postgres image sets a default volume for us. Lets use the postgres image documentation to our advantage when configuring: https://hub.docker.com/_/postgres/. Especially part Environment Variables is of interest.
#
# The backend README should have all the information needed to connect.
#
# The button won’t turn green but you can send messages to yourself.
#
# Submit the docker-compose.yml
#
## TIP: When configuring the database, you might need to destroy the automatically created volumes. Use command docker volume prune, docker volume ls and docker volume rm to remove unused volumes when testing. Make sure to remove containers that depend on them beforehand.
##
## restart: unless-stopped can help if the postgres takes a while to get ready

docker-compose -f docker-compose.2_6.yml up

# got 'Working! Messages below also work.' when pressing the 2.6 button
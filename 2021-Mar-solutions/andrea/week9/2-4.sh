#!/bin/bash

# Add redis to example backend.
#
# Redis is used to speed up some operations. Backend uses a slow api to get information. You can test the slow api by requesting /ping?redis=true with curl. The frontend program has a button to test this.
#
# Configure a redis container to cache information for the backend. Use the documentation if needed when configuring: https://hub.docker.com/_/redis/
#
# The backend README should have all the information needed to connect.
#
# When you’ve correctly configured the button will turn green.
#
# Submit the docker-compose.yml

# restart: unless-stopped can help if the redis takes a while to get ready

# TIP: If you’re stuck check out tips and tricks

docker-compose -f ./docker-compose.2_4.yml up

# got > Nice! The exercise is complete!

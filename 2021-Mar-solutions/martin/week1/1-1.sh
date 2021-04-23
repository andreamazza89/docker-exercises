#! /bin/bash

# 1.1 Getting started
# Since we already did “Hello, World!” in the material let’s do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.

containers=(nginx redis httpd)

for container in "${containers[@]}"
do
  echo "starting container for $container..."
  docker run --name "docker-exercises-$container" -d $container
done

# Stop 2 of the containers leaving 1 up.

for container in "${containers[@]:1}"
do
  echo "stopping container for $container..."
  docker container stop "docker-exercises-$container"
done

# Submit the output for docker ps -a which shows 2 stopped containers and one running.

docker ps -a

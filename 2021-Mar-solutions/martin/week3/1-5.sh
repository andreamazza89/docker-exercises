#! /bin/bash

# In a previous exercise we used devopsdockeruh/simple-web-service:ubuntu
# Here is the same application but instead of ubuntu is using alpine: devopsdockeruh/simple-web-service:alpine

# Pull both images and compare the image sizes

docker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine

ALPINE_SIZE=$(docker inspect -f "{{ .Size }}" alpine)
UBUNTU_SIZE=$(docker inspect -f "{{ .Size }}" ubuntu)
SIZE_DIFFERENCE=$(expr $ALPINE_SIZE - $UBUNTU_SIZE)

echo "size difference in bytes between ubuntu and alpine images..."
if [[ $SIZE_DIFFERENCE -lt 0 ]]
then
  echo $(expr $SIZE_DIFFERENCE \* -1) # absolute value
else
  echo $SIZE_DIFFERENCE
fi

# Go inside the alpine container and make sure the secret message functionality is the same. Alpine version doesn’t have bash but it has sh

CONTAINER=$(docker run -d --rm devopsdockeruh/simple-web-service:alpine)
sleep 15

docker exec $CONTAINER tail -n 100 ./text.log | grep "message" | head -1

docker stop $CONTAINER > /dev/null

# cleanup

docker image rm devopsdockeruh/simple-web-service:ubuntu
docker image rm devopsdockeruh/simple-web-service:alpine

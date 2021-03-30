#! /bin/bash

# In a previous exercise we used devopsdockeruh/simple-web-service:ubuntu
# Here is the same application but instead of ubuntu is using alpine: devopsdockeruh/simple-web-service:alpine

# Pull both images and compare the image sizes

# Go inside the alpine container and make sure the secret message functionality is the same. Alpine version doesn’t have bash but it has sh
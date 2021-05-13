#!/bin/bash

# 1.11: Spring
#
# Lets create a Dockerfile for a Java Spring project: github page
#
# The setup should be straightforward with the README instructions. Tips to get you started:
#
# Use openjdk image FROM openjdk:_tag_ to get java instead of installing it manually. Pick the tag by using the README and dockerhub page.
#
# You’ve completed the exercise when you see a ‘Success’ message in your browser.

git clone https://github.com/docker-hy/material-applications.git

docker image build . -t spring-example

docker container run --rm --name springy -p 8080:8080 spring-example


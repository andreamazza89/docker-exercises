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

docker build . -t docker-exercises:1-11

docker run --rm --name=1_11 -d -p 8080:8080 docker-exercises:1-11

sleep 6 # this is not a good way to wait for a service to be ready, but that's outside the scope of this exercise

curl http://localhost:8080

docker container stop 1_11

docker image rm docker-exercises:1-11


## curl's output below:

#  <!DOCTYPE html>
# <html xmlns="http://www.w3.org/1999/xhtml">
#     <head>
#         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">        <title>Spring</title>
#         <meta charset="UTF-8" />
#
#     </head>
#     <body style="width: fit-content; padding-top: 3em; margin: auto;">
#         <form action="/press" method="post">
#             <button class="btn btn-info btn-outline-dark" type="submit">Press here</button>
#         </form>
#         <p style="width: fit-content; margin: auto;"></p>
#     </body>
# </html>

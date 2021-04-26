#! /bin/bash

# Now that we know how to create and build Dockerfiles we can improve previous works.

# Create a Dockerfile for a new image that starts from ubuntu:18.04.

# Make a script file on you local machine with such content as echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;. Transfer this file to an image and run it inside the container using CMD. Build the image with tag “curler”.

# Run the new curler image with the correct flags and input helsinki.fi into it. Output should match the 1.4 one.

# Return both Dockerfile and the command you used to run the container.

docker build -f 1-8.dockerfile . --tag curler
echo "helsinki.fi" | docker run -i --rm curler
docker image rm curler

# ➜ ./1-8.sh
# [+] Building 0.2s (9/9) FINISHED
#  => [internal] load build definition from 1-8.dockerfile                                                                                                                                                       0.0s
#  => => transferring dockerfile: 41B                                                                                                                                                                            0.0s
#  => [internal] load .dockerignore                                                                                                                                                                              0.0s
#  => => transferring context: 2B                                                                                                                                                                                0.0s
#  => [internal] load metadata for docker.io/library/ubuntu:18.04                                                                                                                                                0.0s
#  => [1/4] FROM docker.io/library/ubuntu:18.04                                                                                                                                                                  0.0s
#  => [internal] load build context                                                                                                                                                                              0.0s
#  => => transferring context: 30B                                                                                                                                                                               0.0s
#  => CACHED [2/4] RUN apt-get update && apt-get upgrade                                                                                                                                                         0.0s
#  => CACHED [3/4] RUN apt-get install curl -y                                                                                                                                                                   0.0s
#  => CACHED [4/4] COPY ./curler.sh /usr/local/bin/curler                                                                                                                                                        0.0s
#  => exporting to image                                                                                                                                                                                         0.1s
#  => => exporting layers                                                                                                                                                                                        0.0s
#  => => writing image sha256:426a8bc9b7858f6b2b7d29d5b0859bbcf47119e3e072229eea0abaee3d5fc9fa                                                                                                                   0.0s
#  => => naming to docker.io/library/curler                                                                                                                                                                      0.0s
# 
# Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
# Input website:
# Searching...
#   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#                                  Dload  Upload   Total   Spent    Left  Speed
# 100   231  100   231    0     0   1698      0 --:--:-- --:--:-- --:--:--  1698
# <!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
# <html><head>
# <title>301 Moved Permanently</title>
# </head><body>
# <h1>Moved Permanently</h1>
# <p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
# </body></html>
# Untagged: curler:latest
# Deleted: sha256:426a8bc9b7858f6b2b7d29d5b0859bbcf47119e3e072229eea0abaee3d5fc9fa
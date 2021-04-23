#! /bin/bash

# Now that we know how to create and build Dockerfiles we can improve previous works.

# Create a Dockerfile for a new image that starts from ubuntu:18.04.

# Make a script file on you local machine with such content as echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;. Transfer this file to an image and run it inside the container using CMD. Build the image with tag “curler”.

# Run the new curler image with the correct flags and input helsinki.fi into it. Output should match the 1.4 one.

# Return both Dockerfile and the command you used to run the container.

docker build . -t curler

echo "helsinki.fi" | docker run --rm -i curler

# The output is the same as for 1.4

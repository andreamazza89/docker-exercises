#!/bin/bash

# Configure a machine learning project.
#
# Look into machine learning project created with Python and React and split into three parts: frontend, backend and training
#
# Note that the training requires 2 volumes and backend should share volume /src/model with training.
#
# The frontend will display on http://localhost:3000 and the application will tell if the subject of an image looks more like a cucumber or a moped.
#
# Submit the docker-compose.yml
##
## This exercise is known to have broken for some attendees based on CPU. The error looks something like “Illegal instruction (core dumped)”. Try downgrading / upgrading the tensorflow found in requirements.txt or join the telegram channel and message with @jakousa.
##
## Note that the generated model is a toy and will not produce good results.
##
## It will take SEVERAL minutes to build the docker images, download training pictures and train the classifying model.
##
## This exercise was created by Sasu Mäkinen

# Rather than pulling all of three codebases in my host, I have created DockerFiles that pull them from within the image.
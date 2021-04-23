FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install curl -y

WORKDIR /curler

COPY ./curler.sh .

CMD ./curler.sh

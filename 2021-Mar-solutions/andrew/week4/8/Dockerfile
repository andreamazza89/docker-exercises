FROM ubuntu:18.04 

RUN apt update -y && apt upgrade -y && apt install curl -y

WORKDIR /usr/src/app

COPY ./curler.sh .

CMD ./curler.sh
FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade
RUN apt-get install curl -y

COPY ./curler.sh /usr/local/bin/curler

CMD ["curler"]
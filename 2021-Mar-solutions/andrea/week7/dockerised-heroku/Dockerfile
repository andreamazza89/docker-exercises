FROM ubuntu:18.04

RUN apt update && apt install curl -y
RUN curl https://cli-assets.heroku.com/install.sh | sh

ENTRYPOINT ["heroku"]

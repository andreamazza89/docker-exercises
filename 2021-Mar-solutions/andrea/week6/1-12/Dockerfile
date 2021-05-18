FROM node:14

WORKDIR /myapp

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /myapp/material-applications/example-frontend

RUN npm install && npm run build

RUN npm install -g serve

EXPOSE 5000

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]

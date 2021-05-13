FROM node:14-alpine

WORKDIR /app

EXPOSE 5000

COPY ./material-applications/example-frontend .

RUN npm install -g serve

RUN npm install && npm run build

CMD serve -s -l 5000 build
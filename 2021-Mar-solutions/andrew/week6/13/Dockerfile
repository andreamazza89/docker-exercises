FROM golang:1.16-stretch

WORKDIR /app

EXPOSE 8080

COPY ./material-applications/example-backend .

RUN go build

CMD ./server
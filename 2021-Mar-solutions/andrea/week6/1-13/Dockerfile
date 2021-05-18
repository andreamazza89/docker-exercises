FROM golang:1.16

WORKDIR /myapp

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /myapp/material-applications/example-backend

RUN go build

EXPOSE 8080

ENTRYPOINT ["./server"]

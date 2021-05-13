FROM openjdk:8

WORKDIR /app

EXPOSE 8080

RUN git clone https://github.com/docker-hy/material-applications.git

COPY ./material-applications/spring-example-project .

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar
FROM openjdk:8

WORKDIR /myapp

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /myapp/material-applications/spring-example-project/

RUN ./mvnw package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "./target/docker-example-1.1.3.jar"]

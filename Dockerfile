FROM maven:latest
COPY . .
RUN mvn package

FROM openjdk:14-alpine
WORKDIR /var/lib/docker_example/
COPY . /docker_example/target/docker_example-0.0.1-SNAPSHOT.jar .
RUN apt-get clean -y
EXPOSE 8000
CMD ["java", "-jar", "docker_example-0.0.1-SNAPSHOT.jar"]

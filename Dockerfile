FROM maven:3.6.3-jdk-11
COPY . .
RUN mvn  package --batch-mode

FROM openjdk:11-alpine
WORKDIR /var/lib/otusarchitect/
COPY . /otusarchitect/target/docker_example-0.0.1-SNAPSHOT.jar .
RUN apt-get clean -y
EXPOSE 8000
CMD ["java", "-jar", "docker_example-0.0.1-SNAPSHOT.jar"]

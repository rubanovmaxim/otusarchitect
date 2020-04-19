FROM maven:3.6.3-jdk-14  as mavenPath
WORKDIR /otusarchitect/
COPY . .
RUN mvn -X  package --batch-mode

FROM openjdk:14-alpine
WORKDIR /var/lib/otusarchitect/
COPY --from=mavenPath /otusarchitect/target/docker_example-0.0.1-SNAPSHOT.jar .
RUN apt-get clean -y
EXPOSE 8000
CMD ["java", "-jar", "docker_example-0.0.1-SNAPSHOT.jar"]

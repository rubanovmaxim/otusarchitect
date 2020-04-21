FROM maven:3.6.3-jdk-8  as mavenPath
WORKDIR /otusarchitect/
COPY . .
RUN mvn  package --batch-mode

FROM openjdk:8-alpine
WORKDIR /var/lib/otusarchitect/
COPY --from=mavenPath /otusarchitect/target/docker_example-0.0.1-SNAPSHOT.jar .
EXPOSE 8000
CMD ["java", "-jar", "docker_example-0.0.1-SNAPSHOT.jar"]

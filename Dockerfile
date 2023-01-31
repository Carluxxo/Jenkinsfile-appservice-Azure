FROM gradle:7.5.0-jdk11 as builder
WORKDIR /app
COPY . /app
RUN gradle build -x test

FROM openjdk:11-jre-slim-buster
COPY --from=builder /app/build/libs/explorer-0.0.1-SNAPSHOT.jar /application.jar
EXPOSE 8080
CMD "java" "-Xms512m" "-Xmx1024m" "-jar" "application.jar"
FROM adoptopenjdk:11-jre-hotspot
EXPOSE 8090
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} application.jar
ENTRYPOINT ["java", "-jar", "application.jar"]

FROM ubuntu
RUN apt-get update && apt-get install -y iputils-ping
CMD bash
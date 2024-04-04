# Use OpenJDK 8 as the base image
FROM openjdk:8

# Set the JAVA_HOME environment variable to point to OpenJDK 8
ENV JAVA_HOME /usr/local/openjdk-8

EXPOSE 8080
ADD target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]

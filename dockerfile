FROM openjdk:11
LABEL MAINTAINER="https://github.com/soumyachandrac"
LABEL APPLICATION="user login page"
WORKDIR /usr/app
ARG JAR_FILE=target/employee-management-webapp-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} user.jar
#to run the jar file
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","user.jar"]

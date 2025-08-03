FROM ubuntu:latest
LABEL Description="The goal of this image is to make understanding Dockerfile instructions easier."
MAINTAINER "Nora Sultan"
ARG FLAGS="-q -y"
RUN apt-get update -y
RUN apt-get install ${FLAGS} openjdk-11-jdk
ADD numeric-0.0.1.jar app.jar
EXPOSE 8080
CMD ["java","-jar","/app.jar"]

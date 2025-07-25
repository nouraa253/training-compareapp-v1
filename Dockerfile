FROM ubuntu:latest
LABEL Description="L'objectif de cette image est de faciliter la comprehension des instructions de la dockerfile."
MAINTAINER "Issaoui Bilel"
ARG FLAGS="-q -y"
RUN apt-get update -y
RUN apt-get install ${FLAGS} openjdk-11-jdk
ADD numeric-0.0.1.jar app.jar
EXPOSE 8080
CMD ["java","-jar","/app.jar"]

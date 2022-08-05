FROM ubuntu:latest
FROM docker

RUN echo docker pull jenkins/jenkins 

EXPOSE 8080
CMD  docker run jenkins/jenkins

FROM ubuntu:latest
FROM docker

RUN docker pull jenkins/jenkins 


CMD  docker run jenkins/jenkins

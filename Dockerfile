FROM ubuntu:latest
FROM docker:latest

RUN echo docker pull jenkins/jenkins 


CMD  docker run jenkins/jenkins

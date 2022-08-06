FROM ubuntu:latest
FROM docker:latest
RUN docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins

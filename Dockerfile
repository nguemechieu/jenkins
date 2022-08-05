FROM ubuntu:latest
RUN apt get update
RUN  apt-get install  docker
RUN echo docker pull jenkins/jenkins 

EXPOSE 8080
CMD  docker run jenkins/jenkins

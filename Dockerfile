FROM ubuntu:latest

RUN  apt-y upgrade
RUN
RUN  apt-y install curl
RUN  apt-y install apt-utils 
  apt-y update 
FROM docker:latest
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN docker pull jenkins/jenkins 
RUN docker run jenkins/jenkins
EXPOSE 8080


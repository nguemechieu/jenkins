FROM ubuntu:latest

RUN  apt upgrade
RUN
RUN  apt install curl
RUN  apt install apt-utils 
RUN  apt update 
FROM docker:latest
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN docker pull jenkins/jenkins 
RUN docker run jenkins/jenkins
EXPOSE 8080


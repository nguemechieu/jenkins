FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade  -y
RUN apt -y install curl

RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN echo get-docker.sh

RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 4050


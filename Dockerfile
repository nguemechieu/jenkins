FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade  -y
RUN apt -y install curl
RUN 
RUN  apt install apt-utils 

RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN echo get-docker.sh

RUN  echo docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 8080


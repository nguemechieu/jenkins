FROM ubuntu:latest

RUN  apt-get update 
RUN  apt-get upgrade  -y
RUN apt -y install curl
RUN 
RUN  apt install apt-utils 

RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN echo get-docker.sh

RUN  echo docker pull jenkins/jenkins 
EXPOSE 8080
CMD echo docker run jenkins/jenkins



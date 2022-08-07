FROM ubuntu:latest

RUN  apt-get upgrade
RUN  apt-get update 

RUN  apt -y install curl

RUN  apt-get  install apt-utils 

RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN echo get-docker.sh

RUN echo docker pull jenkins/jenkins 
EXPOSE 8080
CMD  docker run jenkins/jenkins



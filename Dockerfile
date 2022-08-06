FROM ubuntu:latest



RUN apt -y install curl

RUN  apt install apt-utils 
RUN  apt-get upgrade
RUN  apt-get update 
RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN echo get-docker.sh

RUN  echo docker pull jenkins/jenkins 
EXPOSE 8080
CMD echo docker run jenkins/jenkins



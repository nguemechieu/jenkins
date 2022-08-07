FROM ubuntu:latest

RUN  apt-get upgrade
RUN  apt-get update 

RUN  apt -y install curl

RUN  apt-get  install apt-utils 

RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN bash get-docker.sh
FROM docker:latest
RUN docker pull jenkins/jenkins 
RUN docker r
CMD  docker run jenkins/jenkins
EXPOSE 8080


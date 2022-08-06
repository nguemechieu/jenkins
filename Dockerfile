FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade  -y

RUN  curl -fsSL https://get.docker.com -o get-docker.sh &&  get-docker.sh

RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 4050


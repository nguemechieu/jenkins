FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade  -y

 
RUN  apt install docker
RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 4050


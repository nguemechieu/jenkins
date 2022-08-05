FROM ubuntu:latest
RUN  apt update && apt upgrade && apt install sudo
RUN  sudo apt install  docker
RUN echo docker pull jenkins/jenkins 
RUN systemctl start docker
EXPOSE 8080
CMD  docker run jenkins/jenkins

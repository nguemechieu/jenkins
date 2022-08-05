FROM ubuntu:latest
RUN  apt install sudo
RUN sudo get update
RUN  sudo apt install  docker
RUN echo docker pull jenkins/jenkins 
RUN systemctl start docker
EXPOSE 8080
CMD  docker run jenkins/jenkins

FROM ubuntu:latest
RUN  apt upgrade -y
RUN  apt install curl
RUN  apt install apt-utils  
RUN  apt update y
FROM docker:latest
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN echo docker pull jenkins/jenkins 
EXPOSE 8080:80
RUN echo docker run jenkins/jenkins



FROM ubuntu:latest
RUN  apt upgrade -y
RUN  apt update -y
RUN  apt install apt-utils  

FROM docker:latest
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN echo docker pull jenkins/jenkins 
EXPOSE 8080:80
RUN echo docker run jenkins/jenkins



FROM ubuntu:latest
RUN  apt upgrade -y
RUN  apt update -y
RUN  apt install -y apt-utils  
RUN  apt install -y curl
FROM docker:latest
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN echo docker pull jenkins/jenkins 

CMD  docker run jenkins/jenkins
EXPOSE 8080:80


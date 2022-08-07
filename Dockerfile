FROM ubuntu:latest

RUN  apt-get upgrade
RUN  apt-get update 

RUN  apt -y install curl

RUN  apt install apt-utils 

RUN  curl -fsSL https://get.docker.com -o get-docker.sh 
RUN bash get-docker.sh
FROM docker:latest
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN docker pull jenkins/jenkins 
RUN docker r
CMD  docker run jenkins/jenkins
EXPOSE 8080


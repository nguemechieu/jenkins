FROM ubuntu:latest

RUN   apt install  docker
RUN echo docker pull jenkins/jenkins 
RUN systemctl start docker
EXPOSE 8080
CMD  docker run jenkins/jenkins

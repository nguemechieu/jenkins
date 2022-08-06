FROM ubuntu:latest
RUN  apt install gnome-terminal 
RUN  apt install docker 
RUN  apt update 
RUN  apt upgrade 

RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 4050


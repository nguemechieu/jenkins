FROM ubuntu:latest
RUN apt install gnome-terminal 
RUN apt install docker 
RUN  apt-get update 
RUN  apt-get upgrade 
RUN  apt-get install docker
RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD docker run jenkins/jenkins


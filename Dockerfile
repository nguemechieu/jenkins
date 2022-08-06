FROM ubuntu:latest
RUN  echo apt-get install gnome-terminal 
RUN echo apt-get install docker 
RUN  echo apt-get update 
RUN  echo apt-get upgrade 

RUN echo systemctl --user start docker
RUN  echo docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins


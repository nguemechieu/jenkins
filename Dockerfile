FROM ubuntu:latest
RUN echo apt install gnome-terminal 
RUN echo apt install docker 
RUN echo apt-get update 
RUN echo apt-get upgrade 
RUN echo apt-get install docker
RUN echo systemctl --user start docker

RUN echo docker pull jenkins/jenkins 
CMD echo docker run jenkins/jenkins



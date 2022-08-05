FROM ubuntu:latest
RUN  apt install gnome-terminal
RUN apt get upgrade && apt get update
RUN  apt-get install ./docker-desktop-<version>-<arch>.deb
RUN  systemctl --user enable docker-desktop
RUN echo docker pull jenkins/jenkins 
RUN jenkins/jenkins

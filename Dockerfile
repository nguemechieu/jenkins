FROM ubuntu:latest
RUN echo apt install gnome-terminal 
RUN echo apt install docker 
RUN echo apt-get update 
RUN echo apt-get install ./docker-desktop-<version>-<arch>.deb
RUN echo systemctl --user start docker-desktop
RUN echo systemctl --user enable docker-desktop 
RUN echo docker pull jenkins/jenkins 
CMD echo docker run jenkins/jenkins



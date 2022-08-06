FROM ubuntu:latest
RUN echo apt install gnome-terminal && apt install docker && apt-get update  && apt-get install ./docker-desktop-<version>-<arch>.deb
&& systemctl --user start docker-desktop
&& systemctl --user enable docker-desktop && docker pull jenkins/jenkins 
CMD echo  docker run jenkins/jenkins



FROM ubuntu:latest
RUN echo apt install gnome-terminal 
RUN echo apt install docker 
RUN echo apt-get update 
RUN echo wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.11.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64
RUN echo apt-get install docker
RUN echo systemctl --user start docker-desktop
RUN echo systemctl --user enable docker-desktop 
RUN echo docker pull jenkins/jenkins 
CMD echo docker run jenkins/jenkins



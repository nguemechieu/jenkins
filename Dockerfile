FROM ubuntu:latest
RUN  wget https://github.com/sudo-project/sudo/releases/download/SUDO_1_9_11p3/sudo_1.9.11-4_ubu2204_amd64.deb

RUN  apt install sudo_1.9.11-4_ubu2204_amd64.deb
RUN sudo get update
RUN  sudo apt install  docker
RUN echo docker pull jenkins/jenkins 
RUN systemctl start docker
EXPOSE 8080
CMD  docker run jenkins/jenkins

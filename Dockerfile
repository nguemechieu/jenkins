FROM ubuntu:latest

RUN  apt install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
RUN  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

RUN apt-cache policy docker-ce
RUN apt install docker-ce
RUN systemctl status docker
RUN echo docker pull jenkins/jenkins 

CMD  docker run jenkins/jenkins

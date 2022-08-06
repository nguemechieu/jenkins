FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade  -y
RUN echo apt-get install curl 

 RUN mkdir -p /etc/apt/keyrings curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update
RUN  apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 4050


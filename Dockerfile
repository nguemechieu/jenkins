FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade  && echo "$ Y"
RUN apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
RUN  mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
  RUN apt-get update
 RUN  apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
RUN systemctl --user start docker
RUN  docker pull jenkins/jenkins 
CMD  docker run jenkins/jenkins
EXPOSE 4050


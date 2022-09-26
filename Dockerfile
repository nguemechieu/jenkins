FROM ubuntu:latest
# Setup env
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV PATH=/home/myuser/.local/bin:$PATH
ENV FT_APP_ENV="docker"
# Metadata indicating an image maintainer.
LABEL maintainer="nguemechieu@live.com"
LABEL key="4205485"

# Prepare environment
RUN mkdir /jenkingserver \
  && apt-get update \
  && apt-get clean \
  && useradd -u 1000 -G sudo -U -m -s /bin/bash myuser \
  && chown myuser:myuser /jenkingserver \
  # Allow sudoers
  && echo "myuser ALL=(ALL) NOPASSWD: /bin/chown" >> /etc/sudoers

WORKDIR /jenkinsserver

RUN  apt-get upgrade -y \

&& apt install -y apt-utils  \
&& apt-get install -y curl \
&& apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release \
	
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


FROM jenkins/jenkins:2.361.1-jdk11
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.8 docker-workflow:521.v1a_a_dd2073b_2e"



RUN docker build -t jenkins:2.361.1-1 





EXPOSE 8080

CMD [ "docker run", "jenkins"]



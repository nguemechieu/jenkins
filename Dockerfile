FROM ubuntu:latest
# Setup env
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV PATH=/home/myuser/.local/bin:$PATH
ENV FT_APP_ENV="docker"

# Prepare environment
RUN mkdir /jenkingserverrunner \
  && apt-get update \
  && apt-get clean \
  && useradd -u 1000 -G sudo -U -m -s /bin/bash myuser \
  && chown myuser:myuser /jenkingserverrunner \
  # Allow sudoers
  && echo "myuser ALL=(ALL) NOPASSWD: /bin/chown" >> /etc/sudoers

WORKDIR /jenkingserverrunner

RUN  apt-get upgrade -y \

&& apt install -y apt-utils  \
&& apt-get install -y curl \
&& apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release \
	
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN 	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null


RUN echo apt-get install -y docker-ce\
&&  echo docker pull jenkins/jenkins 

RUN echo systemctl start docker \

&&  docker run jenkins/jenkins]
EXPOSE 8080:80


FROM ubuntu:latest

RUN  apt-get upgrade -y

RUN  apt-get update -y
RUN  apt install -y apt-utils  
RUN  apt-get install -y curl
RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release
	
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN 	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN echo systemctl status docker

RUN echo apt-get install -y docker-ce
RUN  usermod -aG docker ${USER}
RUN su - ${USER}
RUN  systemctl start docker
RUN docker pull jenkins/jenkins 

CMD  docker run jenkins/jenkins
EXPOSE 8080:80


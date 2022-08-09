FROM ubuntu:latest
RUN  apt-get upgrade -y
RUN  apt-get update -y
RUN  apt-get install -y apt-utils  
RUN  apt-get install -y curl
RUN apt install apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release
	
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN 	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN systemctl status docker

RUN apt-get install -y docker-ce
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN echo docker pull jenkins/jenkins 

CMD echo  docker run jenkins/jenkins
EXPOSE 8080:80


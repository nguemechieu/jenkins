FROM ubuntu:latest
RUN  apt-get upgrade -y
RUN  apt-get update -y
RUN  apt-get install -y apt-utils  
RUN  apt-get install -y curl
RUN apt-get install -y docker-ce
RUN echo usermod -aG docker ${USER}
RUN echo su - ${USER}
RUN echo systemctl start docker
RUN echo docker pull jenkins/jenkins 

CMD echo  docker run jenkins/jenkins
EXPOSE 8080:80


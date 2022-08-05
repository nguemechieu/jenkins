FROM ubuntu:latest


RUN apt install docker 
RUN echo docker pull jenkins/jenkins 

CMD  docker run jenkins/jenkins
EXPOSE 8080\tcp


FROM ubuntu:latest


RUN echo $ apt install docker 
RUN docker pull jenkins/jenkins 

CMD  docker run jenkins/jenkins




# https://circleci.com/docs/2.0/custom-images/
# FROM circleci/openjdk:8-jdk-browsers
FROM openjdk:8-jdk

# USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN apt-get install -y maven
RUN apt-get install -y git
RUN apt-get install -y openssh-server
RUN npm install -g serverless

CMD [ "node" ]
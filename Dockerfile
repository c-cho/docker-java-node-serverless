# https://circleci.com/docs/2.0/custom-images/
# FROM circleci/openjdk:8-jdk-browsers
FROM node:6.3.0

# USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y default-jdk
RUN npm install -g serverless
# RUN apt-get install -y build-essential
RUN apt-get install -y maven
RUN apt-get install -y git
RUN apt-get install -y openssh-server

CMD [ "echo $JAVA_HOME" ]
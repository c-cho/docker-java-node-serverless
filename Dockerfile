# https://circleci.com/docs/2.0/custom-images/
# FROM circleci/openjdk:8-jdk-browsers
FROM node:6.3.0

# USER root

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y openjdk-8-jdk
RUN npm install -g serverless
# RUN apt-get install -y build-essential
RUN apt-add-repository ppa:andrei-pozolotin/maven3
RUN apt-get install -y maven3
# RUN apt-get install -y maven
RUN apt-get install -y git
RUN apt-get install -y openssh-server
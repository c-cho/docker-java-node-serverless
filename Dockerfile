# https://circleci.com/docs/2.0/custom-images/
# FROM circleci/openjdk:8-jdk-browsers
FROM ubuntu:16.04

# USER root

ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get install -y software-properties-common python-software-properties
# RUN add-apt-repository ppa:openjdk-r/ppa
# RUN apt-get install -y openjdk-8-jdk
# RUN apt-get install -y build-essential
# RUN apt-add-repository ppa:andrei-pozolotin/maven3
# RUN apt-get install -y maven3
# RUN apt-get install -y apt-utils
RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g serverless
RUN apt-get install -y git
RUN apt-get install -y openssh-server
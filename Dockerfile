# https://circleci.com/docs/2.0/custom-images/
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update

# set environment to Japanese
RUN apt-get install -y language-pack-ja-base \
                       language-pack-ja \
                       ibus-mozc \
                       man \
                       manpages-ja && \
    update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8

RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y nodejs
# RUN apt-get install -y npm
RUN npm install -g serverless
RUN apt-get install -y git
RUN apt-get install -y openssh-server
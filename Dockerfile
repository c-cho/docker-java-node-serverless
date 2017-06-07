# https://circleci.com/docs/2.0/custom-images/
FROM circleci/openjdk:8-jdk-browsers

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN npm install -g serverless

CMD [ "node" ]
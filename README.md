# docker-java-node-serverless
This is a dockerfile used for circleci 2.0.  

![I-Love-CircleCI](https://circleci.com/blog/media/1107-Picard%20Blog-Docker-06.png)

## Inside it
- Ubuntu 16.04
- openjdk-8-jdk
- nodejs 6
- serverless framework
- Japanese environment

## Use it
### For CircleCI 2.0
```yaml
version: 2
jobs:
  build:
    # ...
    docker:
      - image: choasia/java-node-serverless
    # ...
```
### For other usages
`docker pull choasia/java-node-serverless` **OR** [Docker Hub](https://hub.docker.com/r/choasia/java-node-serverless/)

## License
Apache 2.0

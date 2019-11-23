FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl openjdk-8-jdk openjdk-8-jre
RUN apt-get clean

EXPOSE 25565 25575

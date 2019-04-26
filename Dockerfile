FROM centos:latest

EXPOSE 8111

RUN yum install wget \
    java-1.8.0-openjdk -y

WORKDIR /tmp/

RUN wget https://download.jetbrains.com/teamcity/TeamCity-2018.2.4.tar.gz --no-check-certificate 

RUN tar xfz TeamCity-2018.2.4.tar.gz \
    && rm TeamCity-2018.2.4.tar.gz

WORKDIR /tmp/TeamCity/bin/

ENTRYPOINT ./runAll.sh start && /bin/bash


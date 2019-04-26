FROM centos:latest

WORKDIR /tmp/

RUN ls -lrta && yum install wget -y

RUN wget https://download.jetbrains.com/teamcity/TeamCity-2018.2.4.tar.gz --no-check-certificate

RUN yum install java-1.8.0-openjdk -y

RUN java -version && echo $JAVA_HOME

RUN tar xfz TeamCity-2018.2.4.tar.gz

WORKDIR /tmp/Teamcity/bin

RUN ./runAll.sh start


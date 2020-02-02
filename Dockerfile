# FROM alpine:latest
FROM centos:7
RUN yum install -y ant
RUN yum install -y curl 
RUN yum install java-1.8.0-openjdk
# ENV SetJavaHome=/jdk1.6.0_24 
# ENV JAVA_HOME=/jdk1.6.0_24
# ENV PATH=$JAVA_HOME/bin:$PATH
RUN java -version
RUN yum install -y git
RUN yum install -y sshpass
COPY java.security /jdk1.6.0_24/jre/lib/security
COPY bcprov-jdk15to18-164.jar /jdk1.6.0_24/jre/lib/ext
FROM centos:7
ARG NEXUS_USERNM
ARG NEXUS_PASSWD
RUN yum install -y ant sshpass git curl
RUN curl -u kevin.summersill:ZXASQW!@zxasqw12 -O https://nexus.di2e.net/nexus3/repository/Private_ACES_Raw/docker/installation/jdk-7u80-linux-x64.rpm
RUN chmod +x jdk-7u80-linux-x64.rpm && rpm -ivh /jdk-7u80-linux-x64.rpm
ENV SetJavaHome=/usr/java/jdk1.7.0_80/ 
ENV JAVA_HOME=/usr/java/jdk1.7.0_80/
ENV PATH=$JAVA_HOME/bin:$PATH
RUN java -version
COPY java.security $JAVA_HOME/jre/lib/security
COPY bcprov-jdk15to18-164.jar $JAVA_HOME/jre/lib/ext

FROM centos:7
ARG NEXUS_USERNM
ARG NEXUS_PASSWD
RUN yum install -y ant sshpass git curl
RUN curl -u $NEXUS_USERNM:$NEXUS_PASSWD -O https://nexus.di2e.net/nexus3/repository/Private_ACES_Raw/docker/installation/jdk-7u80-linux-x64.rpm
RUN chmod +x jdk-7u80-linux-x64.rpm && rpm -ivh /jdk-7u80-linux-x64.rpm
ENV SetJavaHome=/usr/java/jdk1.7.0_80/
ENV JAVA_HOME=/usr/java/jdk1.7.0_80/
ENV PATH=$JAVA_HOME/bin:$PATH
RUN java -version
COPY java.security $JAVA_HOME/jre/lib/security
COPY bcprov-jdk15to18-164.jar $JAVA_HOME/jre/lib/ext
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -
RUN yum install -y nodejs
RUN node --version
RUN npm --version
RUN yum install -y dnf
RUN yum groupinstall -y "Development Tools"

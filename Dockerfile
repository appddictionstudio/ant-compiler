FROM alpine:20191219
RUN apk update
RUN apk fetch openjdk8
RUN apk add --update --no-cache openssh sshpass openjdk8 bash curl apache-ant nano git
RUN curl -u kevin.summersill:ZXASQW!@zxasqw12 -O https://nexus.di2e.net/nexus3/repository/Private_ACES_Raw/docker/installation/jdk-6u24-linux-x64.bin
# ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# ENV PATH="$JAVA_HOME/bin:${PATH}"
# RUN java -version
ENV USER=docker
ENV UID=1004
ENV GID=23456
RUN addgroup --gid "$GID" "$USER" \
    && adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup "$USER" \
    --no-create-home \
    --uid "$UID" \
    "$USER"
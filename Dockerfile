FROM node:12.20.1-buster as build
RUN apt-get install -y git
CMD bin/bash
FROM alpine:3.12.0
RUN apk update 
RUN apk add apache2=2.4.46-r1
RUN apk add apache2-ssl=2.4.46-r1
RUN apk add apache2-utils=2.4.46-r1
RUN apk add apache2-error=2.4.46-r1
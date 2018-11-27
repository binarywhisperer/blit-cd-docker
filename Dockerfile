FROM alpine:3.8

RUN apk update && apk add openssh-client bash

WORKDIR /

ADD deployment.sh /

RUN ["chmod", "+x", "/deployment.sh"]
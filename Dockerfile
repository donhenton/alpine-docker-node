# The base docker image is alpine with docker installed
FROM docker:latest

 
RUN apk add --no-cache \
    openssh-client \
    git \
    nodejs \
    nodejs-npm \
    openssh \
    bash \
    curl wget

 
ENV NODE_VERSION 6.10.3
ENV NPM_VERSION 3.10.10

COPY homedir/ /root
RUN chmod 400 /root/.ssh/*
RUN chmod 555 /root/*.sh

 
 
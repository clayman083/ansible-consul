FROM python:3.7-alpine3.8

LABEL "com.github.actions.name"="Role syntax check"
LABEL "com.github.actions.description"="Check role syntax"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN apk add --update --no-cache make libc-dev python3-dev linux-headers gcc g++ openssl-dev libffi-dev && \
    pip install -U pip && \
    pip install ansible && \
    apk del make libc-dev python3-dev linux-headers gcc g++

COPY . /root/code

WORKDIR /root/code

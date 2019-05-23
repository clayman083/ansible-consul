FROM python:3.7-alpine3.8

LABEL "com.github.actions.name"="Ansible action"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN apk add --update --no-cache --quiet make libc-dev python3-dev linux-headers gcc g++ openssl-dev libffi-dev && \
    pip install --no-cache-dir --quiet -U pip && \
    pip install --no-cache-dir --quiet ansible ansible-lint && \
    apk del --quiet make libc-dev python3-dev linux-headers gcc g++

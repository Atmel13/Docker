ARG AUTHOR="Eugene Mityushkin"

FROM alpine:latest

ARG AUTHOR
ENV HOST=0.0.0.0
ENV PORT=3000

LABEL NAME="Atmel13/node_app"
LABEL MAINTAINER=${AUTHOR}
LABEL VERSION="0.0.1"

RUN apk update
RUN apk add docker

WORKDIR /app
COPY . .

VOLUME [ "/var/run/docker.sock:/var/run/docker.sock" ]
ARG AUTHOR="Eugene Mityushkin"

FROM node:15-alpine3.10

ARG AUTHOR
ENV HOST=0.0.0.0
ENV PORT=3000

LABEL NAME="Atmel13/node_app"
LABEL MAINTAINER=${AUTHOR}
LABEL VERSION="0.0.1"

RUN apk update && apk add docker

WORKDIR /app
COPY . .

VOLUME [ "/var/run/docker.sock:/var/run/docker.sock" ]
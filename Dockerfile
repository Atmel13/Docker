ARG AUTHOR="Eugene Mityushkin"

FROM node:15.2.0-alpine3.10 as static

WORKDIR /app
COPY . .
RUN npm i --no-cache && ls -l > output.txt

FROM node:15.2.0-alpine3.10
ARG AUTHOR
ENV HOST=0.0.0.0
ENV PORT=3000

WORKDIR /app
COPY --from=static /app .

LABEL NAME="Atmel13/node_app"
LABEL MAINTAINER=${AUTHOR}
LABEL VERSION="0.0.1"

EXPOSE 3000

ENTRYPOINT [ "npm", "run" ]
CMD [ "script" ]
FROM node:alpine

RUN mkdir -p /app/code && \
  cd /app && npm install -g markdownlint
  cd /app && npm install -g markdownlint-cli
  docker-resources/config.json /app/config.json
  chmod 777 /app/config.json

WORKDIR /app

ENTRYPOINT [ "markdownlint", "--config", "config.json" ]

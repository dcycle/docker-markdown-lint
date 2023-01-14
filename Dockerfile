FROM node:alpine

ADD docker-resources/config.json /app/config.json

RUN mkdir -p /app/code && \
  cd /app && npm install -g markdownlint && \
  cd /app && npm install -g markdownlint-cli && \
  chmod 777 /app/config.json

WORKDIR /app

ENTRYPOINT [ "markdownlint", "--config", "config.json" ]

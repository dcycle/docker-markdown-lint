FROM node

RUN mkdir -p /app/code

RUN cd /app && npm install -g markdownlint
RUN cd /app && npm install -g markdownlint-cli
ADD docker-resources/config.json /app/config.json
RUN chmod 777 /app/config.json

WORKDIR /app

ENTRYPOINT [ "markdownlint", "--config", "config.json" ]

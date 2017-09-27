FROM node

RUN mkdir -p /app/code

RUN cd /app && npm install -g markdownlint
RUN cd /app && npm install -g markdownlint-cli

WORKDIR /app

ENTRYPOINT [ "markdownlint" ]

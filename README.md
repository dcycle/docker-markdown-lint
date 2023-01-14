Docker Markdown Linter
=====

[![CircleCI](https://circleci.com/gh/dcycle/docker-markdown-lint.svg?style=svg)](https://circleci.com/gh/dcycle/docker-markdown-lint)

Lint Markdown with [markdownlint](https://github.com/DavidAnson/markdownlint).

For example:

    docker run --rm -v $(pwd)/example:/app/code dcycle/markdown-lint:2 \
         /app/code/markdown-file-with-errors.md
    docker run --rm -v $(pwd)/example:/app/code dcycle/markdown-lint:2 \
         /app/code/markdown-file-no-errors.md

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/markdown-lint/).

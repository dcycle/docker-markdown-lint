Docker Markdown Linter
=====

[![GitHub Actions](https://github.com/dcycle/docker-jenkins/actions/workflows/config.yml/badge.svg)](../../actions/workflows/config.yml)

Lint Markdown with [markdownlint](https://github.com/DavidAnson/markdownlint).

For example:

    docker run --rm -v $(pwd)/example:/app/code dcycle/markdown-lint:2 \
        /app/code/markdown-file-with-errors.md
    docker run --rm -v $(pwd)/example:/app/code dcycle/markdown-lint:2 \
        /app/code/markdown-file-no-errors.md

By default the system will ignore long lines (80+ characters), but this can be overridden by running, for example:

    docker run --rm --entrypoint markdownlint -v $(pwd):/app/code \
        dcycle/markdown-lint:2 /app/code/README.md

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/markdown-lint/).

set -e
docker pull node:alpine
docker build -t local-dcycle-markdown-lint-image .

docker run -v $(pwd)/example:/app/code local-dcycle-markdown-lint-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-markdown-lint-image /app/code/markdown-file-no-errors.md

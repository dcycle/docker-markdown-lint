set -e
docker pull node
docker pull dcycle/markdown-lint
docker build -t local-dcycle-markdown-lint-image .

docker run -v $(pwd)/example:/app/code dcycle/markdown-lint --help
docker run -v $(pwd)/example:/app/code dcycle/markdown-lint /app/code/markdown-file-no-errors.md
docker run -v $(pwd)/example:/app/code local-dcycle-markdown-lint-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-markdown-lint-image /app/code/markdown-file-no-errors.md

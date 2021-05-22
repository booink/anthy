# Anthy

ubuntuでbuildするためにDockerfileを追加した。
test/ 以下のビルドが通らなかったので、Makefileから除外している

## build

```sh
docker-compose build anthy
```

## use

```sh
docker-compose run --rm anthy bash
docker-compose run --rm anthy anthy-dic-tool
docker-compose run --rm anthy anthy-agent
```

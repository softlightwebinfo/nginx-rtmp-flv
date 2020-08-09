# HTTP-FLV

## Introduction

This repo is a Docker image of [nginx-http-flv-module](https://github.com/winshining/nginx-http-flv-module), include a [flv.js](https://github.com/bilibili/flv.js) demo.


## Installation

Pull Docker image:

```shell
docker build --tag streaming:1.1 .

```

Note: you can pull the `streaming:1.1` tag to experience the latest (in developing) nginx-http-module.

## Usage

Start nginx-http-flv server:

```shell
docker run --rm -it -p 81:80 -p 1935:1935 streaming:1.1
```

Push RTMP stream to nginx-http-flv server:

```shell
ffmpeg -re -i example.mp4 -vcodec copy -acodec copy -f flv rtmp://127.0.0.1/demo/stream-1
```

Then browse [http://127.0.0.1](http://127.0.0.1), enjoy it!

You can read here for more details:

[nginx-http-flv-module](https://github.com/winshining/nginx-http-flv-module)

[nginx-rtmp-module](https://github.com/arut/nginx-rtmp-module)

[flv.js](https://github.com/bilibili/flv.js)

[docker-nginx](https://github.com/nginxinc/docker-nginx)

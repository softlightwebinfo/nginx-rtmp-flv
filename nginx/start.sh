#!/bin/bash
echo "Build app"
docker build --tag streaming:1.1 .
echo "run docker"
docker run --rm -it -p 81:80 -p 1935:1935 streaming:1.1

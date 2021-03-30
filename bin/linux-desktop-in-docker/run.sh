#!/bin/bash

set -x
set -e

YOUR_IP=$(ifconfig en0 | grep -w inet | awk '{print $2}')

xhost + $YOUR_IP
docker build -f Dockerfile -t firefox .
docker run -it -e DISPLAY=$YOUR_IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Downloads:/home/users/Downloads firefox

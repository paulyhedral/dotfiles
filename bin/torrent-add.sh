#!/bin/bash

set -x
set -e

torrent=$1

transmission-remote -a -w "$(pwd)/$(dirname \"$torrent\")" "$torrent"

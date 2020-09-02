#!/bin/bash

set -x
set -e

src=~/SmiteWorks
dest=/Volumes/Dropbox/Dropbox/

rsync -avz "${src}" "${dest}"

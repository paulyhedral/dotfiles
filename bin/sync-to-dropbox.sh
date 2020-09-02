#!/bin/bash

set -x
set -e

dbdir=/Volumes/Dropbox/Dropbox

# Backdrops
rsync -avz ~/Backgrounds/ "${dbdir}/Desktops/"

# FG data
rsync -avz ~/SmiteWorks/ "${dbdir}/SmiteWorks/"

# ...
# rsync -avz

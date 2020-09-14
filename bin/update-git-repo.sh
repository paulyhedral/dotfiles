#!/bin/bash

set -x
set -e

repodir=${1:-.}

pushd ${repodir}

git stash save
git pull
git stash pop

popd

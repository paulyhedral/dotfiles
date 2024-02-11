#!/bin/bash

set -e

dir=${1:-orig}

pushd $HOME/Library/Preferences/SmiteWorks >/dev/null

if [ -f fantasygrounds-${dir}.conf ]; then
    cp fantasygrounds-${dir}.conf fantasygrounds.conf
    popd >/dev/null
    open -n -b 'unity.SmiteWorks.Fantasy Grounds'
else
    files=$(ls -1 fantasygrounds-*.conf | sed -e 's/^fantasygrounds-//' -e 's/\.conf$//')
    echo "Choices:"
    echo $files
    popd >/dev/null
    exit 1
fi

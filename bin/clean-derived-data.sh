#!/bin/bash

set -x
set -e

pushd ~/Library/Developer/Xcode/DerivedData

for i in *-*; do
    pushd $i

    rm -rf Build
    rm -rf Index
    rm -rf Logs
    rm -rf TextIndex
    rm -f OpenQuickly*

    popd
done

popd

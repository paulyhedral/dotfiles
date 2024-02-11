#!/bin/bash

set -x
set -e

dir=$(pwd)
scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

for f in $(find $dir -name 'x??' -print); do
    name=$(yq e '.metadata.name' $f)
    namespace=$(yq e '.metadata.namespace' $f)
    filedir=$(dirname $f)
    filename=$(basename $f)
    # newname="$filedir/$filename"
    pushd "$filedir"
    mv -n "$filename" "${name}.yaml"
    popd
done

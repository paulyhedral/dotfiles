#!/bin/bash

fgdir="$HOME/Dropbox/SmiteWorks/Fantasy Grounds"

pushd "${fgdir}"

pushd extensions
popd

pushd modules
popd

pushd rulesets
curl -v https://www.fantasygrounds.com/forums/attachment.php?attachmentid=31899&d=1583336747
popd

popd

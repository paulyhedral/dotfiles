#!/bin/bash

set -e 

app=$1
context=${2:-preprod}

kubectl --context carlabs-${context} exec -n dev -it $(kubectl --context carlabs-${context} get -n dev pods -l app=${app} --no-headers | cut -d' ' -f1) -- bash


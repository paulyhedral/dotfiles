#!/bin/bash

set -e

input=$1

echo $input | fold -w1 | shuf | tr -d '\n'


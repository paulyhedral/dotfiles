#!/bin/bash

set -e

dir=${1:-.}

files=($(ls -1 $dir | sort))
size=${#files[@]}
index=$(($RANDOM % $size))

echo ${files[$index]}

#!/bin/bash

set -x
set -e

port=$1

lsof -i :$port

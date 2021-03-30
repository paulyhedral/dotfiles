#!/bin/bash

set -x
set -e

op=$1

# brew services $op elasticsearch
brew services $op logstash
brew services $op kibana

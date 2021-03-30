#!/bin/bash

set -x
set -e

op=$1

brew services $op elasticsearch
brew services $op filebeat
brew services $op metricbeat
brew services $op packetbeat

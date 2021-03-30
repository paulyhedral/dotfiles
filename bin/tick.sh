#!/bin/bash

set -x
set -e

op=$1

brew services $op influxdb
brew services $op telegraf
brew services $op chronograf
brew services $op kapacitor

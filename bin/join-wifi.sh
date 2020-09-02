#!/bin/bash

network=$1
password=$2

networksetup -setairportnetwork en0 $network $password


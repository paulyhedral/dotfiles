#!/bin/bash

config=${1:-/usr/local/etc/openvpn/client2.conf}

gw=$(route get default | grep gateway | awk '{ print $2 }')

pushd /usr/local/etc/openvpn
sudo /usr/local/sbin/openvpn --route-gateway $gw --config $config
popd

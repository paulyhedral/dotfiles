#!/bin/bash

ssh -f -q bastion.admin-dmz.car-labs.com "top" > /dev/null 2>&1 &
ssh -f -n -q bastion.admin-preprod.car-labs.com "top" > /dev/null 2>&1 &

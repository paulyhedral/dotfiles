#!/bin/bash

set -e

ssh -l ubuntu -i ~/.ssh/ops.pem -o ProxyJump=bastion-admin $1


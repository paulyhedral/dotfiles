#!/bin/bash

#set -x
set -e

ns=$1

tmp_file="/tmp/ns-$$.json"

kubectl get namespace ${ns} -o json | jq 'del(.spec.finalizers)' >${tmp_file}

cat ${tmp_file}

kubectl proxy &>/dev/null &
PROXY_PID=$!
killproxy() {
    kill $PROXY_PID
}
trap killproxy EXIT

sleep 1 # give the proxy a second

cat ${tmp_file} | curl -s -k -H "Content-Type: application/json" -X PUT -o /dev/null --data-binary @- http://localhost:8001/api/v1/namespaces/${ns}/finalize && echo "Killed namespace: ${ns}"

rm -f ${tmp_file}

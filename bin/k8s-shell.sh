#!/bin/bash

set -e

scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

usage() {
    echo "Usage: $0 [-h] [-v] [-k <kubeconfig>] [-n <namespace>]"
}

while getopts "h?vk:n:" opt; do
    case "$opt" in
    h | \?)
        usage
        exit 0
        ;;
    v)
        set -x
        ;;
    k)
        kubeconfig="--kubeconfig ${OPTARG}"
        ;;
    n)
        namespace="--namespace ${OPTARG}"
        ;;
    esac
done
shift "$(($OPTIND - 1))"

kubectl ${kubeconfig} run --rm ${namespace} -it --image ubuntu:22.04 shell-$$ -- /bin/bash

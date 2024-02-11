#!/bin/bash

set -e

find . -name '*.yaml' -print | sed -e 's/^\.\//\- /' >> kustomization.yaml


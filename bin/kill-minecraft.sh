#!/bin/bash

set -e 

ps wwaxu | grep -w $(id -un) | grep -i minecraft | grep -v grep | grep -v kill | awk '{print $2}' | xargs kill -9 


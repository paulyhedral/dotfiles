#!/bin/bash
# bash generate random alphanumeric string
#
 
# bash generate random 32 character alphanumeric string (lowercase only)
cat /dev/urandom | env LC_ALL=C tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1


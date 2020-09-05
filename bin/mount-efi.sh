#!/bin/bash

set -x 
set -e

slice=$(diskutil list | grep EFI | head -1 | awk '{print $6}')

sudo mkdir -p /Volumes/EFI
sudo mount -t msdos /dev/$slice /Volumes/EFI


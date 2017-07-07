#!/bin/bash

apt-get update
apt-get -y install apt-utils
apt-get install nano
apt-get -y install autoconf
apt-get -y install build-essential
apt-get -y install zip
apt-get -y install git

for file in bin/setup/*; do
    [ -f "$file" ] && [ -x "$file" ] && "$file"
done

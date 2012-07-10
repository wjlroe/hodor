#!/bin/bash

set -e

which vagrant || (echo "You need to install the vagrant gem"; exit 1)

cd graylog2_server
mkdir -p cookbooks
cd cookbooks
if [ -d graylog2 ]; then
    cd graylog2 && git pull;
else
    git clone "https://github.com/nilya/graylog2.cookbook.git" graylog2
fi

#!/bin/bash

which vagrant || echo "You need to install the vagrant gem"; exit 1

cd graylo2_server
mkdir -p cookbooks
if [ -d graylog2 ];
    cd graylog2 && git pull
else
    git co git://github.com/nilya/graylog2.cookbook.git graylog2
fi

cd graylog2_server && vagrant init

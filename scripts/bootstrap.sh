#!/bin/bash

set -e

function grab_cookbook() {
    name=$1
    url=$2
    mkdir -p graylog2_server/cookbooks
    cd graylog2_server/cookbooks
    echo "pwd: $(pwd)"
    if [ -d "${name}" ]; then
        cd "${name}" && git pull
        cd ../../..
    else
        git clone "${url}" "${name}"
        cd ../..
    fi

}

which vagrant || (echo "You need to install the vagrant gem"; exit 1)

grab_cookbook graylog2 https://github.com/nilya/graylog2.cookbook.git
grab_cookbook elasticsearch https://github.com/newspaperclub/elasticsearch-cookbook.git

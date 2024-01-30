#!/bin/bash

BASE_CONF_DIR=/opt/camp/

cd /tmp/ && git clone https://github.com/erdemsahin/campconfiguration.git \
    && cd /tmp/campconfiguration && git checkout master

mkdir -p ${BASE_CONF_DIR} || echo "Not created config directory"; exit 1

rsync -aP /tmp/campconfiguration --exclude=".git" ${BASE_CONF_DIR}

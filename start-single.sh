#!/bin/bash

# Start ArangoDB in a single server mode. Reset all previous data

DATA_DIR=~/arangodb-data/single/

screen -d -m -S arangocluster bash \
  -c "rm -rf ${DATA_DIR} && mkdir -p ${DATA_DIR} && cd ${DATA_DIR} && arangodb --starter.mode=single" \
&& echo cluster started

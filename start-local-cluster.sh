#!/bin/bash

# Start ArangoDB in cluster mode. Reset all previous data

DATA_DIR=~/arangodb-data/cluster/

screen -d -m -S arangocluster bash \
  -c "rm -rf ${DATA_DIR} && mkdir -p ${DATA_DIR} && cd ${DATA_DIR} && arangodb --starter.local" \
&& echo cluster started

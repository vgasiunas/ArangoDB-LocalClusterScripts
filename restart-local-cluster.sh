#!/bin/bash

# Restart ArangoDB cluster. Preserves data

DATA_DIR=~/arangodb-data/cluster/

screen -d -m -S arangocluster bash \
  -c "cd ${DATA_DIR} && arangodb --starter.local" \
&& echo cluster started

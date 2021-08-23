#!/bin/bash

# Start ArangoDB in single server mode with authentication enabled

DATA_DIR=~/arangodb-data/single/

screen -d -m -S arangocluster bash \
  -c "rm -rf ${DATA_DIR} && mkdir -p ${DATA_DIR} && cd ${DATA_DIR} && arangodb create jwt-secret --secret=jwtSecret && arangodb --starter.mode=single --auth.jwt-secret=./jwtSecret" \
&& echo cluster started

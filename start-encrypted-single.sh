#!/bin/bash

# Start ArangoDB in single server mode with encryption at rest enabled

DATA_DIR=~/arangodb-data/single-encrypted/
rm -rf ${DATA_DIR} && mkdir -p ${DATA_DIR}
cp encryption-key-example "${DATA_DIR}"

screen -d -m -S arangocluster bash \
  -c "cd ${DATA_DIR} && arangodb --starter.mode=single --rocksdb.encryption-keyfile=encryption-key-example" \
&& echo cluster started

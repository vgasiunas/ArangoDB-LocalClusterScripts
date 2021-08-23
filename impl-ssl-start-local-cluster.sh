#!/bin/bash

DATA_DIR=~/arangodb-data/cluster/

rm -r "${DATA_DIR}"
mkdir -p "${DATA_DIR}"
cp localhost.keyfile "${DATA_DIR}"
cd ${DATA_DIR} && arangodb --starter.local --ssl.keyfile localhost.keyfile

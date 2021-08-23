#!/bin/bash

DATA_DIR=~/arangodb-data/single/

screen -d -m -S arangocluster bash \
  -c "cd ${DATA_DIR} && arangodb --starter.mode=single" \
&& echo cluster started

#!/bin/bash

# An example of running a benchmark on the local cluster

arangobench --server.username root --server.password "" \
  --batch-size 128 --concurrency 8 --requests 1000000 \
  --complexity 10 --collection test --test-case document

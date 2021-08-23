#!/bin/bash

# An example running benchmark on the local cluster with TLS enabled

arangobench --server.endpoint http+ssl://localhost:8529/ --server.username root --server.password "" \
  --batch-size 100 --concurrency 4 --requests 1000000 --replication-factor 3 \
	  --complexity 8 --collection test --test-case document

#!/bin/bash
# Start a local ArangoDB cluster with TLS enabled
# Before the first use execute create-cert.sh to create necessary certificates

screen -d -m -S arangocluster bash impl-ssl-start-local-cluster.sh

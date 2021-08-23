#!/bin/bash
arangodb create tls ca \
    --cert=local-ca.crt --key=local-ca.key

arangodb create tls keyfile \
    --cacert=local-ca.crt --cakey=local-ca.key \
    --host=localhost \
    --keyfile=localhost.keyfile

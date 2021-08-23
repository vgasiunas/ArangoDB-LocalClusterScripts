# ArangoDB Local Cluster Scripts

A set of bash scripts for starting a local ArangoDB deployments for testing
- `start-single.sh` : starts ArangoDB in single-server mode
- `start-single-auth.sh`: starts ArangoDB in single-server mode with authentication enabled
- `start-encrypted-single.sh`: starts ArangoDB in single-server mode with encryption at rest enabled
- `start-local-cluster.sh`: starts ArangoDB in cluster mode
- `ssl-start-local-cluster.sh`: starts ArangoDB in cluster mode with SSL enabled

Note that all these scripts reset the data directory, so all previous data gets lost.

If you want to restart without resetting data use the following scripts:
- `restart-single.sh`
- `restart-local-cluster.sh`

Sample benchmark scripts can be used for testing the deployment:
- `bench-example.sh` to test over plain HTTP
- `bench-ssl-example.sh' to test over HTTPS

To stop the database, use `kill-db.sh`.

Note the scripts are designed for testing only and should not be used in production. 

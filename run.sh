#!/bin/bash

/influxdb-collectd-proxy/bin/proxy \
    -influxdb="$ICP_HOST" \
    -database="$ICP_DATABASE" \
    -username="${ICP_USERNAME:-root}" \
    -password="${ICP_PASSWORD:-root}" \
    -normalize=${ICP_NORMALIZE:-true} \
    -verbose=${ICP_VERBOSE:-false} \
    -typesdb=/types.db

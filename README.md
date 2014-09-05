# Docker image for influxdb-collectd-proxy

Docker image running [influxdb-collectd-proxy][0] in a container.

## Building the image

```
docker build -t influxdb-collectd-proxy .
```

## Usage

The following environment variables are mapped to the proxy's command line options:

 * `ICP_HOST`: `-influxdb`
 * `ICP_DATABASE`: `-database`
 * `ICP_USERNAME`: `-username` (default `root`)
 * `ICP_PASSWORD`: `-password` (default `root`)
 * `ICP_NORMALIZE`: `-normalize` (default `true`)
 * `ICP_VERBOSE`: `-verbose` (default `false`)

Run a container:

```
docker run -d \
    -e ICP_HOST=sandbox.influxdb.com:8086 \
    -e ICP_DATABASE=collectd \
    -e ICP_VERBOSE=true \
    -p 8096:8096/udp \
    influxdb-collectd-proxy:latest
```

[0]: https://github.com/hoonmin/influxdb-collectd-proxy

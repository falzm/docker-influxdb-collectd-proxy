# Docker image for influxdb-collectd-proxy

Docker image running [influxdb-collectd-proxy][0] in a container.

## Usage

Build the image:

```
docker build -t influxdb-collectd-proxy .
```

Run a container:

```
docker run -d \
    -e ICP_HOST=sandbox.influxdb.com \
    -e ICP_DATBASE=collectd \
    -e ICP_USER=root \
    -e ICP_PASSWORD=root \
    -e ICP_VERBOSE=true \
    -p 8096:8096/udp \
    influxdb-collectd-proxy:latest
```

[0]: https://github.com/hoonmin/influxdb-collectd-proxy

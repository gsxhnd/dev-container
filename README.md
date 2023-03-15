# Build Openwrt in Docker

## Build Docker Environment

```shell
docker build -f Dockerfile.base -t openwrt:ubuntu-22.10-base .
```

```shell
# Code in container, keep running
# ENTRYPOINT ["tail", "-f", "/dev/null"]
docker run --name openwrt -d gsxhnd/openwrt:22.03-ubuntu22.10-base tail -f /dev/null
```

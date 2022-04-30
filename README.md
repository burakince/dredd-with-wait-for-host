[![Docker Pulls](https://img.shields.io/docker/pulls/burakince/dredd-with-wait-for-host.svg)](https://hub.docker.com/r/burakince/dredd-with-wait-for-host/) [![dredd-with-wait-for-host](https://github.com/burakince/dredd-with-wait-for-host/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/burakince/dredd-with-wait-for-host/actions/workflows/docker-publish.yml)

# dredd-with-wait-for-host

Dredd With Wait For Host Docker Image

# Usage

It waiting all addresses and sending requests to last parameter.

```
docker run -it --rm -v $(pwd):/blueprints burakince/dredd-with-wait-for-host http://www.waitforhost1.com http://www.waitforhost2.com http://www.targetaddress.com
```

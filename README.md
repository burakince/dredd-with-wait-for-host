# dredd-with-wait-for-host

Dredd With Wait For Host Docker Image

# Usage

It waiting all addresses and sending requests to last parameter.

```
docker run -it --rm -v $(pwd):/blueprints burakince/dredd-with-wait-for-host http://www.waitforhost1.com http://www.waitforhost2.com http://www.targetaddress.com
```

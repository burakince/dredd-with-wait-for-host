# dredd-with-wait-for-host

Dredd With Wait For Host Docker Image

# Usage

```
docker run -it --rm -v $(pwd):/blueprints burakince/dredd-with-wait-for-host http://www.google.com
```

# Usage With Different Host And Target

```
docker run -it --rm -v $(pwd):/blueprints burakince/dredd-with-wait-for-host http://www.waitforhost.com http://www.targetaddress.com
```

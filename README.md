docker-gdrivefs-deluge
======================

#### Run a data container

```
docker run -d -v /data -v /config -v /media --name volumes alpinelinux/base echo data-only
```

#### Run gdrivefs-deluge

```
docker run -i -t -p 8112:8112 -p 58846:58846 -p 58946:58946 --volumes-from volumes --privileged --name deluge-gdrivefs loneleeandroo/deluge-gdrivefs
```

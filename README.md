# Docker-Deluge

[![Image Layers](https://img.shields.io/imagelayers/layers/ufflo/deluge/latest.svg?style=plastic)](https://imagelayers.io/?images=ufflo/deluge:latest)
[![Image Size](https://img.shields.io/imagelayers/image-size/ufflo/deluge/latest.svg?style=plastic)](https://imagelayers.io/?images=ufflo/deluge:latest)
[![Docker Pulls](https://img.shields.io/docker/pulls/ufflo/deluge.svg?style=plastic)]()
[![Docker Stars](https://img.shields.io/docker/stars/ufflo/deluge.svg?style=plastic)]()

Docker container for deluge daemon and webgui

## Usage

Startup Example:

```
docker run -d --name="deluge" -v /docker/deluge/config:/config -v /docker/deluge/log:/log -v /docker/deluge/data:/data -p 8112:8112 -p 58846:58846 -p 58847:58847 -p 58847:58847/udp ufflo/deluge
```


## Volumes

* **Config** 

  Configuration files, will be initiated upon first launch and will remain.

* **Log** 

  Log files are directed here. Upon launch, the start script will rename any existing logs by appending datetime, to prevent old logs from being overwritten.

* **Data** 

  Application not configured to use this volume by default. The intention is to use the volume for AutoAdd, Archive and Completed torrents.

## Ports

* **8112 TCP** 
  
  WebGUI

* **58846 TCP** 

  Daemon

* **58847 TCP/UDP** 

  Torrent traffic


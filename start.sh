#!/bin/sh

deluged -c /config -L info -l /log/deluged.log
deluge-web -c /config -L info -l /log/deluge-web.log

#!/bin/bash

# Rename any previous log files to prevent them fr ombeing overwritten upon start
LogFiles=("/log/deluged.log" "/log/deluge-web.log")
for LogFile in "${LogFiles[@]}"
do
    NewLogFileName=$LogFile"_$(date +"%Y%m%d-%H%M%S")"
    mv $LogFile $NewLogFileName 2> /dev/null
done

# Start deluge daemon and web
deluged -c /config -L info -l /log/deluged.log
deluge-web -c /config -L info -l /log/deluge-web.log

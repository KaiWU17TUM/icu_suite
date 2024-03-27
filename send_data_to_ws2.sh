#!/bin/bash

echo $1
datafolder=/mnt/DHM-ICUSUITE-DS1/$1
tofolder=/mnt/DHM-ICUSUITE-DS2/
echo Synchronizing folder $datafolder to WS2 $tofolder...
tcheck=$datafolder/lastwatch
echo $tcheck

while true; do
	touch $tcheck
	sleep 30
	echo $(date)
	rsync -auv --info=progress2 --exclude *-15fps $datafolder ws2:$tofolder
done

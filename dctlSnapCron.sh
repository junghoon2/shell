#! /bin/bash

DAY = `date +%Y%m%d`

DAY2=`date -d '2 day ago' +'%Y%m%d'`
echo $DAY2

SNAPPV = `dctl volume list|grep -i mariadb|grep Attached | cut -d " " -f 1`
# spkr@erdia22:~$ dctl volume list|grep -i mariadb|grep Attached | cut -d " " -f 1
# pvc-ec72dec6-2e70-4dac-a0f0-ba168be83758


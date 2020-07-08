#! /bin/bash

dctl login -u admin -p Diamanti1! 2>/dev/null
sleep 5

DAY="`date +%Y%m%d`-maria"
DAY2="`date -d '2 day ago' +'%Y%m%d'-maria`"
LIST="`dctl snapshot list`"
FILE=/home/diamanti/log/snapshotCronLog.txt

echo $DAY
echo $DAY2
echo $LIST
echo $FILE

SNAPPV="`dctl volume list|grep -i mariadb-ssh01-0 | cut -d " " -f 1`"
# spkr@erdia22:~$ dctl volume list|grep -i mariadb|grep Attached | cut -d " " -f 1
# pvc-ec72dec6-2e70-4dac-a0f0-ba168be83758

dctl snapshot create $DAY --src $SNAPPV -m 2
sleep 5

dctl snapshot delete $DAY2 -y
sleep 5

echo $LIST >> $FILE 
echo $DAY >> $FILE

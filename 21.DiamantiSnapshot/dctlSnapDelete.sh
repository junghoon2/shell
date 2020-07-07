#! /bin/bash

# dctl login -u admin -p Diamanti1! 2>/dev/null
# sleep 5

# DAY=`date +%Y%m%d`

DAY2="`date -d '2 day ago' +'%Y%m%d'`-maria"
echo $DAY2

dctl snapshot delete $DAY2 -y
sleep 5

dctl snapshot list

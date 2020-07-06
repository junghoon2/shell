#! /bin/bash

TODAYDATE=`date +%Y%m%d`  # 띄워쓰기 주의

echo $TODAYDATE

#expr $date01 - 2

DAY1=`date -d '1 day ago' +'%Y%m%d'`
echo $DAY1

DAY2=`date -d '2 day ago' +'%Y%m%d'`
echo $DAY2
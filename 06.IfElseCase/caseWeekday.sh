#!/bin/bash
NOW=`date +"%a"`

case $NOW in
  Mon)
    echo "Full backup";;
  Tue|Wed|Thu|Fri)
    echo "Partial backup";;
# double 이 아닌 single 로 or 조건 가능 
  Sat|Sun)
    echo "No backup";;
  *) ;;
esac

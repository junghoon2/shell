#! /bin/bash

printf "Input number between 1 and 3: "
read NUM

# == 사용 못하고
# if [$NUM == 1]
# 숫자 비교는 -eq, -gt, -lt, -ge, -le만 사용 가능
if [ $NUM -eq 1 ] 2>/dev/null
then
  echo "You're number is 1"
fi
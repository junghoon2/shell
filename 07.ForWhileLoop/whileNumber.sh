#! /bin/bash

# While example
printf "Enter your number for Hello world: "  # 입력은 : 사용
read MYNUM

COUNT=1

# while 문은 [], Square bracket 사용
# while 조건을 만족하면 do 문을 실행하라
while [ $COUNT -le $MYNUM ]
do
  printf "Hello World!!! \n"  # \n 습관적으로 사용하도록
  let COUNT++  # let 수식 사용 가능 
done

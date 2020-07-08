#! /bin/bash

# 입력을 read로 바로 저장

read -p "Enter your number between 1 and 3: " num

if [ "$num" -gt "3" ]; then
  # newline이 \n 아닌 듯
  # printf 함수인데 인자로 ( ) 받지 않는다. 참 신기하네. 
  printf "Please inpur correct number.\n"
  # printf ("Please inpur correct number.")
  # printf ("New line")
fi

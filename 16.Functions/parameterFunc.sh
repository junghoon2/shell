#! /bin/bash
# 함수에서 parameter 사용하는 방법

# 예제로 read 시 delimiter로 | 쓰면 인자간 구분이 가능하다 

# global variable
USERNAME=$1

# function definition

# Calculate age in days
funcAgeInDays () {
  # 함수 안에서 $1 변수 사용 가능
  echo "Hello $USERNAME, You are $1 Years old"
  echo "That makes you approximately, `expr $1 \* 365` days old..."
}

# script start
clear 

echo "Enter your age"
read USERAGE

# 변수를 함수 뒤 인자로 사용 가능 
funcAgeInDays $USERAGE

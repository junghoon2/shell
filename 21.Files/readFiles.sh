#! /bin/bash

# Read files

echo "Input your file name: "
read FILE

# for read -r LINE; do 
# file 읽어들이기 위해서는 while 문 사용
# Shell 확실히 가독성이 떨어진다. 
# 이걸 python에서는 어떻게 작성할 수 있을까? 

# Line 별로 출력 가능
# for가 아니라 while 사용한다.
while read -r LINE; do 
  echo "The each line is : $LINE"
done < $FILE

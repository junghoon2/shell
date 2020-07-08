#! /bin/bash

echo "Enter the file name: "
read FILE

for i in 1 2 3; do
  echo `cat $FILE |cut -d "|" -f $i`
done

# echo "Input  your CPU value: "
# read CPU
# echo "Input your memory value: "
# read MEMORY
# echo "Input your DISK value: "
# read DISK

# File에 delimiter 순서대로 내용을 쓰는 방법은?
#! /bin/bash

echo "Enter the file name: "
read FILE

echo "Enter the Delimiter: "
read DELIM

IFS="read -r $DELIM"

while read -r CPU MEMORY DISK; do
  echo "CPU: $CPU"
  echo "MEMORY: $MEMORY"
  echo "DISK: $DISK"
done < "$FLIE"

# File에 delimiter 순서대로 내용을 쓰는 방법은?
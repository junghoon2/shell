#! /bin/bash

# Read files

echo "Input your file name: "

# Debug Start
# set 사용하면 debug start
set -x
read FILE

# for가 아니라 while 사용한다.
while read -r LINE; do 
set +x
  echo "The each line is : $LINE"
done < $FILE

# set +x
# Stops debug
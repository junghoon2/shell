#! /bin/bash
# Demo of exit status handling 

# 첫번째 입력을 바로 DIRECTORY 변수로 저장
DIRECTORY=$1

echo "change into a directory and list the contents"
cd $DIRECTORY 2> /dev/null

if [ "$?" == "0" ]; then
  # echo "Success to enter into the directory"
  echo "We can change into the directory $DIRECTORY, and here are the contents"
  echo "`ls -al`"
else
  # echo "Fail to enter into the directory"
  echo "Cannot change directories, exiting with an error and no listing"
  exit 20
fi

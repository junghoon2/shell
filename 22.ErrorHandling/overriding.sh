#! /bin/bash
# override trap the system exit and execute a custom function

# Global variables
TMPFILE="tmpfile.txt"
TMPFILE2="tmpfile2.txt"

# trap 'funcMyExit' EXIT
# trap 'funcMyExit' 1
trap 'funcMyExit' ERR

# function declaration - Start

# Run this exit instead of the default exit when called 
funcMyExit () {
  echo "Exit Intercepted... "
  echo "cleaning up the temp files..."
  rm -rf tmpfile*.txt
  exit 255
}

# Script - Start
echo "Write something to tmp file for later use..." > $TMPFILE
echo "Write something to tmp file 2 for later use..." > $TMPFILE2

echo "Trying to copy the indicated file before processing..."
cp -rf $1 newfile.txt 2>/dev/null 

# 정상 종료되어도 Exit 함수 호출한다. 
# 왜 그럴까?  
if [ "$?" -eq "0" ]; then
  echo "Everything worked out ok ... "
else
  echo "I guess it did not work out ok ... "
  exit 1
fi

# if [ "$?" -ne "0" ]; then
#   echo "It did not work"
# fi
#! /bin/bash
# Simple cat file example 

# Global var / Default var
INPUTBOX=${INPUTBOX=dialog}
TITLE="Default"
MESSAGE="Something to display"
XCOORD="10"
YCOORD="20"

# Function definition start
inputBox () {
  $INPUTBOX --title "$1" --inputbox "$2" "$3" "$4" 2>tmpfile.txt # 에러 메시지를 tmpfile로 저장
} 

# Script Start
inputBox "[Print out the file]" "What file you want to display" "10" "20"

if [ "`cat tmpfile.txt`" != "" ]; then
# clear, echo "" 이런 꼼꼼한들이 코드의 품질을 향상 시키겠지 
  clear
  cat "`cat tmpfile.txt`"
  echo ""
else
  echo "Enter the file name"
fi
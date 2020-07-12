#! /bin/bash 
# demo of a message box with an OK button

# Global variable / default variable 

# 왜 MSGBOX 변수를 $MSGBOX 변수로 다시 만들었을까?
MSGBOX=${MSGBOX=dialog}

# default variable 사용하지도 않는데.. 
TITLE="Default"
MESSAGE="Some Message"
XCOORD="10"
YCOORD="20"

# Function 정의

# Message box 출력
funcDisplayMsgBox () {
  # $MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
  dialog --title "$1" --msgbox "$2" "$3" "$4"
}

# Script Start
if [ "$1" == "shutdown" ]; then
  funcDisplayMsgBox "WARNING!" "Please press OK when you are ready to shut down the system." "10" "20"
  echo "SHUTTING DOWN NOW"
else
  # funcDisplayMsgBox "Boring...." "You are not asking for anything fun..." "10" "20"
  funcDisplayMsgBox "$TITLE" "$MESSAGE" "$XCOORD" "$YCOORD"
  # " " 붙혀줘야 에러 발생 안 한다. 
  echo "Not doing anything, back to regular scripting"
fi

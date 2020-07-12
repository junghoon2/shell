#! /bin/bash
# Demo for simple Info Box with Dialog 

# global var / default values
MENUBOX=${MENUBOX=dialog} # 이상하게 변수 선언하네

# function 정의

# display the infobox and our message
funcDisplayDialogBox () {
  $MENUBOX --title "[ M A I N  M E N U ]" --menu "Use UP/DOWN Arrows to Move and Select or the Number of Your choise and Enter" 15 45 4 1 "Display hello 2" 2 "goodbye" 3 "display nothing" X "Exit" 2>choice.txt
}

# dialog 명령어에 --menu 등의 옵션을 이용한다.

# script - start 

funcDisplayDialogBox

case "`cat choice.txt`" in
  1) echo "Hello world";;
  2) echo "Goodbye world";;
  3) echo "Nothing";;
  X) echo "Exit"
esac


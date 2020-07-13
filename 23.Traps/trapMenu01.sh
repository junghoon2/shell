#! /bin/bash

# Menu options

clear

trap 'echo " - Please Input Q/q to exit - " ' SIGINT SIGTERM SIGTSTP

while [ "$MENU" != "Q" ] && [ "$MENU" != "q" ]; do 
  printf "Main menu \n"
  printf "========= \n"
  printf "1) Choose the one \n"
  printf "2) Choose the two \n"
  printf "3) Choose the three \n"
  printf "Q) Quit to exit \n"
  read MENU

  clear
done


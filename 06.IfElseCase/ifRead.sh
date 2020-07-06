#! /bin/bash

MYNUM=3

read -p "Please guess SECRET NUMBER between 1 and 5: " NUM

if [ "$NUM" -eq "$MYNUM" ]; then
  printf "You choose the SECRET NUMBER!!! \n"
fi

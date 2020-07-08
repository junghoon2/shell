#! /bin/bash

# 함수 만들기
# Provide user menu
userMenu() {
  printf "This is the menu. \n"
  printf "1) input number one"
  printf "2) input number two"
  printf "3) input number three"
  printf "*) input * to exit"

  read INPUT

}

userMenu()


# if 문자열 비교
#if [ INPUT == 1 | 2 | 3]

# Case 사용
while [INPUT -eq 1] || [INPUT -eq 2] || [INPUT -eq 3]; do  
  case INPUT in 
  1) clear; printf "You choose the number one menu";;
  2) clear; printf "You choose the number two menu";;
  3) clear; printf "You choose the number three menu";;
  esac  
userMenu()
done

if [ INPUT == *]; then
  printf "You choose the number exit menu";;
fi

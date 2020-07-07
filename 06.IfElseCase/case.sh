#! /bin/bash

printf "Choose one number between 1 ~3: "
read NUM

# Using Case
case $NUM in
# 단순 괄호로 조건을 선택한다.
  1) printf "Good job. You win \$100 \n";;
  # ;; 붙힌다. 
  2) printf "Good. It is \$50 \n";;
  3) printf "Bad. You earn nothing \n";;
  *) printf "Choose the right number \n";;
esac
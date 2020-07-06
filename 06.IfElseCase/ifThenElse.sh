#! /bin/bash

# printf "Input number between 1 and 3: "
# read NUM

# # 복수 조건 비교
# # || for OR && for AND
# if [ $NUM -eq 1 ] || [ $NUM -eq 2] 2>/dev/null
# then
#   echo "You're number is 1 or 2"
# else
#   echo "Input the right number"
# fi

 

clear

 

echo "Enter a number between 1 and 3:"

read VALUE

 

if [ "$VALUE" -eq "1" ] 2>/dev/null; then

  echo "You entered #1"

elif [ "$VALUE" -eq "2" ] 2>/dev/null; then

  echo "You successfully entered #2"

elif [ "$VALUE" -eq "3" ] 2>/dev/null; then

  echo "You entered the 3rd number"

else

  echo "You didn't follow the directions!"

fi
#! /bin/bash
# Using AND OR Operator in IF state

echo "Input your number between 1 and 5: "
read NUM

if [ "$NUM" -eq "1" ] 2> /dev/null || [ "$NUM" -eq "3" ] || [ "$NUM" -eq "5" ]; then
  echo "You entered the odd number. "
elif [ "$NUM" -eq "2" ] 2> /dev/null || [ "$NUM" -eq "4" ]; then
  echo "You entered the even number. "
else
  echo "Please input the number between 1 and 5."
fi
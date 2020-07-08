#! /bin/bash

# Print out file with delimiter 

printf "Input the file name: \n"
read FILE

printf "Input the file delimiter: \n"
read DELIM

# remove white space 하는 습관
IFS="read -r $DELIM"
#IFS=$DELIM

# Read file
while read -r CPU MEMORY DISK; do
  printf "CPU is: $CPU \n"
  printf "MEMORY is: $MEMORY \n"
  printf "DISK is: $DISK \n"
done < $FILE

#! /bin/bash

USERNAME=$1

# Function for calculating days
daysInAge () {
  DAYS=`expr $1 \* 365`

  echo "Your living days is about $DAYS days"
}

# Start script
clear

echo "Hello $USERNAME !!"
echo "Input your ages"
read USERAGE

daysInAge $USERAGE

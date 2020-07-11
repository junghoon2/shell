#! /bin/bash
# nested function 검증

# 변수 선언
ARMS=2
LEGS=2

# Function Define
function human () {
  echo "The human being have $ARMS arms"
  echo "The human being have $LEGS legs"

  function gender () {
    if [ "$1" == "male" ]; then
      BEARD=1
      echo "The male has $BEARD beards."
    elif [ "$1" == "female" ]; then
      BEARD=0
      echo "The female has $BEARD beards."
    fi
  }
}

# Start Script
echo "Choose male or female"
read GENDER

human

gender $GENDER

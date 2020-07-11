#! /bin/bash
# Demo for global and local variable

GLOBALVAR="this is outside func"

# Function Definition
myFunc () {
  # echo "$GLOBALVAR"

  # assign new var
  GLOBALVAR="this is from inside"
  # echo "Call from inside func: $GLOBALVAR"

  INSIDEVAR="this is inside var"
  # echo "Call from inside func: $INSIDEVAR"
}

# clear 넣는 습관도 좋은 습관
clear

echo "Call before func : $GLOBALVAR"
echo "Call before func : $INSIDEVAR"

echo ""

myFunc

echo ""
echo "Call after func : $GLOBALVAR"
echo "Call after func : $INSIDEVAR"

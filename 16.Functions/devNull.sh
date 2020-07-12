#! /bin/bash
echo "This is full sentence"
echo " `cat /home/spkr/04.Script/16.Functions/simpleFunc.sh > /dev/null` "

#!/bin/bash
# redirect to /dev/null example
 
echo "This is displaying on the console"
# 문장 마지막에 >> /dev/null 해도 된다. 
echo "This is going into the black hole" >> /dev/null

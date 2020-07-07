#! /bin/bash

# rev 사용하면 라인을 거꾸로 가능 
FILES=`ls -al *.sh |rev|cut -d " " -f 1|rev`

# for list 항목으로 [@] 하지 않는다. 
# 변수 자체가 array 보관하고 있다. 

#for FILE in $FILES[@]; do
# \n 해야 new line 이다. 
for FILE in $FILES; do
  printf "$FILE \n"
done


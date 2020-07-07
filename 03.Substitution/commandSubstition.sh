#! /bin/bash

# command 결과를 저장하려면 ``, backtik 사용한다.
# 대문자로 변수 만들고 `` backtik으로 쉘 결과를 저장

# echo 안에 $변수명 사용 가능
USERFILES=`find /home -user harry -type f 2>/dev/null`
echo "All Files Owned by USER: $USERFILES"

# alias 사용하면 alias 바로 설정 가능
alias TODAY='date'
A=`TODAY`

alias UFILES='find /home -user harry -type f 2>/dev/null'
B=`UFILES`

echo $A
echo $B
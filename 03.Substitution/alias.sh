#! /bin/bash

# Using substitution 

shopt -s expand_aliases # 이게 있어야 alias를 shell 안에서 수행 가능

# alias 사용하면 alias 바로 설정 가능 ('' 또는 "" 사용)
alias TODAY='date'
A=`TODAY`

alias UFILES='find /home -user harry -type f 2>/dev/null'
B=`UFILES`

echo $A
echo $B
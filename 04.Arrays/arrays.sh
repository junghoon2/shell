#! /bin/bash

SERVERLIST=("web01" "web02" "web03" "web04")

# 배열로 하나씩 지정해도 된다.
# SERVERLIST[0]="web01"
# SERVERLIST[1]="web02"

# echo 대신 printf 사용해도 된다.
#printf "{$SERVERLIST[@]}"

files=( "/etc/passwd" "/etc/group" "/etc/hosts" )
limits=( 10, 20, 26, 39, 48)

# printf "%s\n" "${files[@]}"
# printf "%s\n" "${limits[@]}"

# array는 항상 ${}로 받는다. 집합은 {} 사용한다. 
# @는 전체를 의미 또는 *
# @ 개별 하나하나를 의미 가능 

echo ${SERVERLIST[@]}
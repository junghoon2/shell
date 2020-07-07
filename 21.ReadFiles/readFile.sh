#! /bin/bash

# shell에서 파일 내용을 읽고 line by line으로 출력하는 방법은?
# cat 뿐이 없지 않나?
printf "choose the file: "
read FILE

cat $FILE
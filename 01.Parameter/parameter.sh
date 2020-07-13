#! /bin/bash
# Demo for parameter checking
# 인자를 3개를 가지면 error 발생하지 않는 코드 

# $# 전체 인자 수를 변수로 가진다. 
# -ne, != 둘 다 사용 가능 
if [ "$#" != "3" ]; then
  echo "Usage: Please input 3 parameters"
  exit 200
fi

echo "Everything work out OK..."
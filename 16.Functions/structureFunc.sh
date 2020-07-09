#! /bin/bash
# demo of Structure of functions 

# script or global variable 
# 변수는 항상 먼저 선언해 주는 습관을 가진다.
CMDLINE=$1

echo "My script has started"

# Func 호출을 선언 전에 해 주면 안된다.
# topdown 순서로 진행
# 인자를 안 가지는 것이 생소하네.
#funcExamples

# function definitions - start
# function 선언은 한번에 몰아서 적어주는게 낫다

# display a message
funcExamples () {
  echo "This is an example"
}

# begining of the scripts
# 가독성을 위해서 echo comment 달아주는 습관을 가지는 게 좋다.
echo "This is func call start..."
funcExamples

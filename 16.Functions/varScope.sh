#! /bin/bash
# 변수를 함수 안에서 혹은 바깥에서 사용하는지 구분
# Shell에서는 따로 구분이 없고 선언 순서에 따른다.

# 변수는 항상 처음에 선언해 준다.
MYVAR="varFromOutside"

echo "$MYVAR"

# 함수 선언
function myFunc() {
  echo "$MYVAR"
  echo "$HOME"

  MYVAR="varFromInside"
  echo "$MYVAR"

  # local variable
  FUNCVAR="inside func variable"
  echo "$FUNCVAR"
}

echo "$FUNCVAR"

myFunc

echo "$MYVAR"

# Shell에서는 함수 안에서 선언한 변수를
# 함수 바깥에서 자유롭게 사용 가능하다.
echo "$FUNCVAR"
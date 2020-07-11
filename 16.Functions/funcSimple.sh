#! /bin/bash

# function 선언하는 방법
# function 키워드 + () + {} 사용 
# function 키워드는 사용 안 해도 된다
function myFunc () {
  echo "This message from inside function"
}

echo "This messages from outside function"

# function 호출은 () 등 없이 이름만 사용
myFunc
#! /bin/bash
# this is a simple function example

# function 이름은 아무거나 가능한 것 같고
# () 를 인자로 가지고
# {} square bracket 사용하면 된다. 

funcExample() {
  echo "Hi Simple function"  # no ; end of line 
  echo "This is another line"; echo "another 3 lines"
  # ; 는 그냥 줄의 끝 
}

# Call function 할 때 인자, () 안 넣어주네.
funcExample # not ()

#~ /bin/bash

expr 2 + 2
#echo `4 + 4`

# expr 2 + 2\*4

# expr \(2+2\)\*3

# bash는 단순 덧셈 뺄셈도 쉽지 않네. 

expr 2 + 2
echo $(( 4 + 4 ))
 

expr 2 + 2 \* 4
echo $(( 2 + 2 * 4 ))
 

expr \( 2 + 2 \) \* 4
echo $(( (2+2)*4 ))

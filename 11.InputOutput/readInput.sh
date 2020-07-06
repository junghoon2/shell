#! /bin/bash

echo "Input your firstname: "
read FIRSTNAME
echo "Input your lastname: "
read LASTNAME
echo "Input your age: "
read USERAGE # Int type으로 받는 방법은?

# USERAGEA10 = `expr USERAGE + 10`
# Error 발생
#echo $USERAGEA10

# expr 안에서는 int 받는다
echo "In 10 Years, You will be `expr $USERAGE + 10` years old."

# expr 하면 integer type이 아니라서 error 발생 
# USERAGE = `expr USERAGE + 10`
(( USERAGE = USERAGE + 10 ))

echo "Hello $FIRSTNAME, $LASTNAME"
echo "You'll be $USERAGE in ten years later"
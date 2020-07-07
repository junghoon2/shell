#! /bin/bash

# While infinite loop
# bash 에서 boolean 변수가 있나?

# while [ true ]
# while [ false ]  # 무조건 true 인식
# bash는 false, true 변수가 없나?
# while [ 0 ]
# do
#   echo "Infinite loop"
# done

#the_world_is_flat=true
the_world_is_flat=false

# ...do something interesting...
if [ "$the_world_is_flat" = true ] ; then
    echo 'Be careful not to fall off!'
fi

#while [ "$the_world_is_flat" = true ] ; do
# while [ $the_world_is_flat ] ; do
# false 라도 true로
while [ "$the_world_is_flat" = true ] ; do
# while [ "$the_world_is_flat" = wrong ] ; do
# while [ false ]; do  # false 해도 true 인식하네 
  echo "Be careful"
done
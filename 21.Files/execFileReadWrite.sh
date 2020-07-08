#!/bin/bash
# demo of reading and writing to a file using a file descriptor

# 언제 File descriptor 사용할까? 
echo "Enter a file name to read: "
read FILE

# file descriptor란? 파일을 간단히 숫자로 사용한다?

# 0,1,2 System reserved number라서 사용하면 안된다.
# 2 for system error /dev/null

# Read for <, Write for > 
# 3이상 사용해야 한다. 
exec 5<>$FILE

while read -r TEAM; do
  echo "Basebaall Team Name: $TEAM"
done <&5  # & 사용해야 한다. 

# File에 write는 간단히 >, redirect 사용하면 된다. 
echo "File Was Read On: `date`" >&5  # >>, 아니라 >이면 덮어쓰기인데.

# Close file descriptor
exec 5>&-  # &, - 는 또 왜 사용해야 할까? 

#! /bin/bash

# Delete snapshot

#dctl -s 172.17.16.160 login -u admin -p Diamanti1!

SNAPS=`dctl snapshot list|grep "Available"|cut -d " " -f 1`
printf "$SNAPS"

for SNAP in $SNAPS; do
  dctl snapshot delete $SNAP -y
done

dctl snapshot list
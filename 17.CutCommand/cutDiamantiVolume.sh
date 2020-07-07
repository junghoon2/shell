#! /bin/bash

# Delete snapshot

#dctl -s 172.17.16.160 login -u admin -p Diamanti1!

VOLS=`dctl volume list|grep "Available"|cut -d " " -f 1`
printf "$VOLS"

for VOL in $VOLS; do
  dctl volume delete $VOL -y
done

dctl volume list
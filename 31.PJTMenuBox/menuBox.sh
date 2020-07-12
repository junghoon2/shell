#! /bin/bash

# Menubox for Diamanti Cluster login

dialog --title "[Diamanti Cluster]" --menu "Use UP/DOWN Arrows to Move and Select or the Number of Your choise and Enter" 15 45 4 1 "SPK Cluster" 2 "Alpha Douzone Cluster" 3 "POC Douzone Cluster" X "Exit" 2>choice.txt

case "`cat choice.txt`" in
  1) /usr/local/bin/dctl -s 172.17.16.160 login -u admin -p Diamanti1!; clear;;
  2) /usr/local/bin/dctl -s 10.82.11.19 login -u admin -p Diamanti1!;;
  3) /usr/local/bin/dctl -s 172.16.112.170 login -u admin -p Diamanti1!;;
  # echo Exit 안하네
  4) echo "Exit";;
esac

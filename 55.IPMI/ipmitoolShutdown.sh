# ipmi IP, 172.17.16.176~179, dia01~dia04 

sudo ipmitool -I lan -U admin -P admin -H 172.17.16.179 chassis status
sudo ipmitool -I lan -U admin -P admin -H 172.17.16.179 power on

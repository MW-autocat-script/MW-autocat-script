#!/bin/bash

cat newpages.txt | egrep -i 'Computer network|Ethernet|Wi(| |-)fi|wire(d|less) network|(wire(d|less)|Ethernet) router' | egrep -iv 'SSH|Telnet' >> Computernetworking.txt
cat newpages.txt | egrep -i 'Telnet' >> Telnet.txt
cat newpages.txt | egrep -i '\bSSH|Secure Shell' >> SSH.txt

NETWORK=`stat --print=%s Computernetworking.txt`
TELNET=`stat --print=%s Telnet.txt`
SSH=`stat --print=%s SSH.txt`

if [ $NETWORK -ne 0 ];
then
  export CATFILE="Computernetworking.txt"
  export CATNAME="Computer networking"
  ./catscripts/Categorize.sh
fi

if [ $TELNET -ne 0 ];
then
  export CATFILE="Telnet.txt"
  export CATNAME="Telnet"
  ./catscripts/Categorize.sh
fi

if [ $SSH -ne 0 ];
then
  export CATFILE="SSH.txt"
  export CATNAME="SSH"
  ./catscripts/Categorize.sh
fi

rm Computernetworking.txt
rm Telnet.txt
rm SSH.txt
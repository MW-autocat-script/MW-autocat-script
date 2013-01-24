#!/bin/bash

egrep -i 'Computer network|Ethernet|Wi(| |-)fi|wire(d|less) network|wireless card|(wire(d|less)|Ethernet) router|\bLAN(|s)\b|\bWAN(|s)\b|\bWLAN(|s)\b|\bNIC(|s)\b|VLAN|DHCP|network administrator|network administration|\bBOOTP|PXE' newpages.txt | egrep -iv 'SSH|Telnet|Lan Hikari|Obi( |-)wan|FTP' >> Computernetworking.txt
egrep -i 'Telnet' newpages.txt >> Telnet.txt
egrep -i '\bSSH|Secure Shell|OpenSSH' newpages.txt >> SSH.txt
egrep -i 'FTP' >> FTP.txt

NETWORK=`stat --print=%s Computernetworking.txt`
TELNET=`stat --print=%s Telnet.txt`
SSH=`stat --print=%s SSH.txt`
FTP=`stat --print=%s FTP.txt`

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

if [ $FTP -ne 0 ];
then
  export CATFILE="FTP.txt"
  export CATNAME="FTP"
  ./catscripts/Categorize.sh
fi

rm Computernetworking.txt
rm Telnet.txt
rm SSH.txt
rm FTP
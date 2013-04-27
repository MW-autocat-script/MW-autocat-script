#!/bin/bash

egrep -i 'Computer network|Ethernet|Wi(| |-)fi|wire(d|less) network|wireless card|(wire(d|less)|Ethernet) router|\bLAN(|s)\b|\bWAN(|s)\b|\bWLAN(|s)\b|\bNIC(|s)\b|\bVLAN|DHCP|network administrator|network administration|\bBOOTP|PXE|\bDNS\b|\bDDoS\b|\bTCP\b|\bIPX\b|IP address|OSPF|EIGRP|network interface card|\bAOSS|Intranet|default gateway|subnet|netmask' newpages.txt | egrep -iv 'SSH|Telnet|Lan Hikari|Obi( |-)wan|FTP|VoIP|Skype|Bluetooth|Nic Sheff' >> Computernetworking.txt
egrep -i 'Telnet' newpages.txt >> Telnet.txt
egrep -i '\bSSH|Secure Shell|OpenSSH|SFTP' newpages.txt >> SSH.txt
egrep -i '\bFTP\b|TFTP' newpages.txt >> FTP.txt
egrep -i 'VoIP|Voice over IP' newpages.txt | egrep -iv 'Skype' >> VoIP.txt
egrep -i 'Skype' newpages.txt >> Skype.txt
egrep -i 'Bluetooth' newpages.txt >> Bluetooth.txt

NETWORK=`stat --print=%s Computernetworking.txt`
TELNET=`stat --print=%s Telnet.txt`
SSH=`stat --print=%s SSH.txt`
FTP=`stat --print=%s FTP.txt`
VOIP=`stat --print=%s VoIP.txt`
SKYPE=`stat --print=%s Skype.txt`
BLUETOOTH=`stat --print=%s Bluetooth.txt`

if [ $NETWORK -ne 0 ];
then
  export CATFILE="Computernetworking.txt"
  export CATNAME="Computer networking"
  $CATEGORIZE
fi

if [ $TELNET -ne 0 ];
then
  export CATFILE="Telnet.txt"
  export CATNAME="Telnet"
  $CATEGORIZE
fi

if [ $SSH -ne 0 ];
then
  export CATFILE="SSH.txt"
  export CATNAME="SSH"
  $CATEGORIZE
fi

if [ $FTP -ne 0 ];
then
  export CATFILE="FTP.txt"
  export CATNAME="FTP"
  $CATEGORIZE
fi

if [ $VOIP -ne 0 ];
then
  export CATFILE="VoIP.txt"
  export CATNAME="VoIP"
  $CATEGORIZE
fi

if [ $SKYPE -ne 0 ];
then
  export CATFILE="Skype.txt"
  export CATNAME="Skype"
  $CATEGORIZE
fi

if [ $BLUETOOTH -ne 0 ];
then
  export CATFILE="Bluetooth.txt"
  export CATNAME="Bluetooth"
  $CATEGORIZE
fi

rm Computernetworking.txt
rm Telnet.txt
rm SSH.txt
rm FTP.txt
rm VoIP.txt
rm Skype.txt
rm Bluetooth.txt
#!/bin/bash

egrep -i 'Linux|Slackware|vmlinuz|initrd' newpages.txt | egrep -iv 'Debian|SUSE|Ubuntu|\bco(| )Linux|Fedora|Linux Mint|Android' >> Linux.txt
egrep -i 'Debian' newpages.txt >> Debian.txt 
egrep -i 'OpenSUSE|Open SUSE\b' newpages.txt >> OpenSUSE.txt
egrep -i 'Ubuntu' newpages.txt >> Ubuntu.txt
egrep -i 'coLinux|\bco Linux' newpages.txt >> CoLinux.txt
egrep -i 'Fedora [0-9]{1,}|[io]n Fedora|Fedora Linux' newpages.txt >> FedoraLinux.txt
egrep -i 'Linux Mint' newpages.txt >> LinuxMint.txt
egrep -i 'Google Android' newpages.txt >> GoogleAndroid.txt
egrep 'Ice Cream Sandwich' newpages.txt >> GoogleAndroid.txt

LINUX=`stat --print=%s Linux.txt`
DEBIAN=`stat --print=%s Debian.txt`
OPENSUSE=`stat --print=%s OpenSUSE.txt`
UBUNTU=`stat --print=%s Ubuntu.txt`
COLINUX=`stat --print=%s CoLinux.txt`
FEDORA=`stat --print=%s FedoraLinux.txt`
MINT=`stat --print=%s LinuxMint.txt`
ANDROID=`stat --print=%s GoogleAndroid.txt`

if [ $LINUX -ne 0 ];
then
  export CATFILE="Linux.txt"
  export CATNAME="Linux"
  $CATEGORIZE
fi

if [ $DEBIAN -ne 0 ];
then
  export CATFILE="Debian.txt"
  export CATNAME="Debian"
  $CATEGORIZE
fi

if [ $OPENSUSE -ne 0 ];
then
  export CATFILE="OpenSUSE.txt"
  export CATNAME="OpenSUSE"
  $CATEGORIZE
fi

if [ $UBUNTU -ne 0 ];
then
  export CATFILE="Ubuntu.txt"
  export CATNAME="Ubuntu"
  $CATEGORIZE
fi

if [ $COLINUX -ne 0 ];
then
  export CATFILE="coLinux.txt"
  export CATNAME="coLinux"
  $CATEGORIZE
fi

if [ $FEDORA -ne 0 ];
then
  export CATFILE="FedoraLinux.txt"
  export CATNAME="Fedora Linux"
  $CATEGORIZE
fi

if [ $MINT -ne 0 ];
then
  export CATFILE="LinuxMint.txt"
  export CATNAME="Linux Mint"
  $CATEGORIZE
fi

if [ $ANDROID -ne 0 ];
then
  export CATFILE="GoogleAndroid.txt"
  export CATNAME="Google Android"
  $CATEGORIZE
fi

rm Linux.txt
rm Debian.txt
rm OpenSUSE.txt
rm Ubuntu.txt
rm CoLinux.txt
rm FedoraLinux.txt
rm LinuxMint.txt
rm GoogleAndroid.txt
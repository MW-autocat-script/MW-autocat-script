#!/bin/bash

cat newpages.txt | egrep -i 'Linux kernel' >> Linux.txt

cat newpages.txt | egrep -i 'Debian' >> Debian.txt 

cat newpages.txt | egrep -i 'OpenSUSE' >> OpenSUSE.txt
cat newpages.txt | egrep -i 'Open SUSE\b' >> OpenSUSE.txt

cat newpages.txt | egrep -i 'in Ubuntu' >> Ubuntu.txt
cat newpages.txt | egrep -i 'on Ubuntu' >> Ubuntu.txt
cat newpages.txt | egrep -i 'install Ubuntu' >> Ubuntu.txt

cat newpages.txt | egrep -i 'coLinux' >> CoLinux.txt
cat newpages.txt | egrep -i '\bco Linux' >> CoLinux.txt

cat newpages.txt | egrep -i 'Fedora [0-9]{1,}' >> FedoraLinux.txt
cat newpages.txt | egrep -i '[io]n Fedora' >> FedoraLinux.txt

cat newpages.txt | egrep -i 'Linux Mint' >> LinuxMint.txt

cat newpages.txt | egrep -i 'Google Android' >> GoogleAndroid.txt
cat newpages.txt | egrep 'Ice Cream Sandwich' >> GoogleAndroid.txt

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
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catLinux.sh
fi

if [ $DEBIAN -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catDebian.sh
fi

if [ $OPENSUSE -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catOpenSUSE.sh
fi

if [ $UBUNTU -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catUbuntu.sh
fi

if [ $COLINUX -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catCoLinux.sh
fi

if [ $FEDORA -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catFedora.sh
fi

if [ $MINT -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catMint.sh
fi

if [ $ANDROID -ne 0 ];
then
  ./catscripts/Technology/Computers/Software/Operating\ systems/Linux/catAndroid.sh
fi

rm Linux.txt
rm Debian.txt
rm OpenSUSE.txt
rm Ubuntu.txt
rm CoLinux.txt
rm FedoraLinux.txt
rm LinuxMint.txt
rm GoogleAndroid.txt
#!/bin/bash

egrep -i 'operating system| OS\b|\[\[OS ' newpages.txt | egrep -iv 'Windows|Unix|Linux|Mac OS|Open(| )BSD|Net(| )BSD|Free(| )BSD|\bDOS\b|Google Android' >> OperatingSystems.txt

OS=`stat --print=%s OperatingSystems.txt`

if [ $OS -ne 0 ];
then
  export CATFILE="OperatingSystems.txt"
  export CATNAME="Operating systems"
  ./catscripts/Categorize.sh
fi

./catscripts/Technology/Computers/Software/Operating_systems/FreeBSD/FreeBSD.sh
./catscripts/Technology/Computers/Software/Operating_systems/Linux/Linux.sh
./catscripts/Technology/Computers/Software/Operating_systems/Mac_OS_X/Mac_OS_X.sh
./catscripts/Technology/Computers/Software/Operating_systems/OpenBSD/OpenBSD.sh
./catscripts/Technology/Computers/Software/Operating_systems/Unix/Unix.sh
./catscripts/Technology/Computers/Software/Operating_systems/Windows/Windows.sh

rm OperatingSystems.txt
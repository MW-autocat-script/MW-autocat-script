#!/bin/bash

cat newpages.txt | egrep -i 'operating system|\bOS\b' | egrep -iv 'Windows|Unix|Linux|Mac OS|Open(| )BSD|Net(| )BSD|Free(| )BSD|\bDOS\b' >> OperatingSystems.txt

OS=`stat --print=%s OperatingSystems.txt`

if [ $OS -ne 0 ];
then
  export CATFILE="OperatingSystems.txt"
  export CATNAME="Operating systems"
  ./catscripts/Categorize.sh
fi

./catscripts/Technology/Computers/Software/Operating\ systems/Linux/Linux.sh
./catscripts/Technology/Computers/Software/Operating\ systems/Windows/Windows.sh

rm OperatingSystems.txt
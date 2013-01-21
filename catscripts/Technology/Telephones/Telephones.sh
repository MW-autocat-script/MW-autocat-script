#!/bin/bash

cat newpages.txt | egrep -i 'telephone|\bphone|caller ID|call waiting|busy signal' | egrep -iv 'cell(|ullar)(| )phone|mobile (|tele)phone|\bi phone' >> Telephones.txt
cat newpages.txt | egrep -i 'cell(|ular)(| )phone|mobile phone|SIM card|\b(2|3|4)G\b|GPRS' | egrep -iv 'i(| )phone|iPod' >> Cellphones.txt
cat newpages.txt | egrep -i 'i(| )phone' >> iPhones.txt

TELEPHONES=`stat --print=%s Telephones.txt`
CELLPHONES=`stat --print=%s Cellphones.txt`
IPHONES=`stat --print=%s iPhones.txt`

if [ $TELEPHONES -ne 0 ];
then
  export CATFILE="Telephones.txt"
  export CATNAME="Telephones"
  ./catscripts/Categorize.sh
fi

if [ $CELLPHONES -ne 0 ];
then
  export CATFILE="Cellphones.txt"
  export CATNAME="Cellphones"
  ./catscripts/Categorize.sh
fi

if [ $IPHONES -ne 0 ];
then
  export CATFILE="iPhones.txt"
  export CATNAME="iPhone"
  ./catscripts/Categorize.sh
fi

rm Telephones.txt
rm Cellphones.txt
rm iPhones.txt
#!/bin/bash

egrep -i 'Thailand' newpages.txt | egrep -iv 'Bangkok' >> Thailand.txt
egrep -i 'Bankok' newpages.txt | egrep -iv 'Mafia Wars|Bankok Dangerous' >> Bangkok.txt

THAILAND=`stat --print=%s Thailand.txt`
BANGKOK=`stat --print=%s Bangkok.txt`

if [ $THAILAND -ne 0 ];
then
  export CATFILE="Thailand.txt"
  export CATNAME="Thailand"
  ./catscripts/Categorize.sh
fi

if [ $BANGKOK -ne 0 ];
then
  export CATFILE="Bangkok.txt"
  export CATNAME="Bangkok"
  ./catscripts/Categorize.sh
fi

rm Thailand.txt
rm Bangkok.txt
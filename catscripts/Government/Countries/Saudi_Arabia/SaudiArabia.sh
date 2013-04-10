#!/bin/bash

egrep -i 'Saudi(| )Arabia' newpages.txt | egrep -iv 'Mecca|Riyadh' >> SaudiArabia.txt
egrep -i 'Mecca' newpages.txt >> Mecca.txt
egrep -i 'Riyadh' newpages.txt >> Riyadh.txt

SAUDIARABIA=`stat --print=%s SaudiArabia.txt`
MECCA=`stat --print=%s Mecca.txt`
RIYADH=`stat --print=%s Riyadh.txt`

if [ $SAUDIARABIA -ne 0 ];
then
  export CATFILE="SaudiArabia.txt"
  export CATNAME="Saudi Arabia"
  $CATEGORIZE
fi

if [ $MECCA -ne 0 ];
then
  export CATFILE="Mecca.txt"
  export CATNAME="Mecca"
  $CATEGORIZE
fi

if [ $RIYADH -ne 0 ];
then
  export CATFILE="Riyadh.txt"
  export CATNAME="Riyadh"
  $CATEGORIZE
fi

rm SaudiArabia.txt
rm Mecca.txt
rm Riyadh.txt
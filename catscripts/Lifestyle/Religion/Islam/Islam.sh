#!/bin/bash

egrep -i 'Islam|Muslim|\bSunni(|s)\b|Shiite|hajj|Prophet (Muhammed|Muhammad)' newpages.txt | egrep -iv 'Ramadan|Mecca|Medina' >> Islam.txt
egrep -i 'Ramadan' newpages.txt >> Ramadan.txt

ISLAM=`stat --print=%s Islam.txt`
RAMADAN=`stat --print=%s Ramadan.txt`

if [ $ISLAM -ne 0 ];
then
  export CATFILE="Islam.txt"
  export CATNAME="Islam"
  $CATEGORIZE
fi

if [ $RAMADAN -ne 0 ];
then
  export CATFILE="Ramadan.txt"
  export CATNAME="Ramadan"
  $CATEGORIZE
fi

rm Islam.txt
rm Ramadan.txt
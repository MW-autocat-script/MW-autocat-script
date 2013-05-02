#!/bin/bash

egrep -i 'Islam|Muslim|\bSunni(|s)\b|Shiite|hajj|Prophet (Muhammed|Muhammad)' newpages.txt | egrep -iv 'Ramadan|Mecca|Medina' >> Islam.txt

ISLAM=`stat --print=%s Islam.txt`

if [ $ISLAM -ne 0 ];
then
  export CATFILE="Islam.txt"
  export CATNAME="Islam"
  $CATEGORIZE
fi

rm Islam.txt
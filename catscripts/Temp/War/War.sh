#!/bin/bash

egrep -i 'World War (1|I)\b|\bWW(| )I\b|\bww(| )1\b' newpages.txt >> WorldWarI.txt
egrep -i 'Wordl War (2|II)\b|\bWW(| )II\b|\bww(| )2\b' newpages.txt >> WorldWarII.txt

WWONE=`stat --print=%s WorldWarI.txt`
WWTWO=`stat --print=%s WorldWarII.txt`

if [ $WWONE -ne 0 ];
then
  export CATFILE="WorldWarI.txt"
  export CATNAME="World War I"
  $CATEGORIZE
fi

if [ $WWTWO -ne 0 ];
then
  export CATFILE="WorldWarII.txt"
  export CATNAME="World War II"
  $CATEGORIZE
fi

rm WorldWarI.txt
rm WorldWarII.txt
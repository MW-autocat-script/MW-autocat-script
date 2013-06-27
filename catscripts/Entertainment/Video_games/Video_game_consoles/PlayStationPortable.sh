#!/bin/bash

KEYWORDS_PSP="\bPSP|Play(| )Station(| )Portable|\bPS Portable"

egrep -i "$KEYWORDS_PSP" newpages.txt >> PlayStationPortable.txt

PSP=`stat --print=%s PlayStationPortable.txt`

if [ $PSP -ne 0 ];
then
  export CATFILE="PlayStationPortable.txt"
  export CATNAME="PlayStation Portable"
  $CATEGORIZE
fi

rm PlayStationPortable.txt
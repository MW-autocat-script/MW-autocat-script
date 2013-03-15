#!/bin/bash

egrep -i 'Fire(| )Emblem' newpages.txt >> FireEmblem.txt

EMBLEM=`stat --print=%s FireEmblem.txt`

if [ $EMBLEM -ne 0 ];
then
  export CATFILE="FireEmblem.txt"
  export CATNAME="Fire Emblem series"
  $CATEGORIZE
fi

rm FireEmblem.txt
  
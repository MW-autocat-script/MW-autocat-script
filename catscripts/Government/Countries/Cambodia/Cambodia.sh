#!/bin/bash

egrep -i 'Cambodia\b|Khmer Rouge|Phnom Penh' newpages.txt >> Cambodia.txt

CAMBODIA=$(stat --print=%s Cambodia.txt)

if [ $CAMBODIA -ne 0 ];
then
  export CATFILE="Cambodia.txt"
  export CATNAME="Cambodia"
  $CATEGORIZE
fi

rm Cambodia.txt
#!/bin/bash

egrep -i 'Free(| )Realms' newpages.txt > FreeRealms.txt

FREEREALMS=`stat --print=%s FreeRealms.txt`

if [ $FREEREALMS -ne 0 ];
then	
  export CATFILE="FreeRealms.txt"
  export CATNAME="Free Realms"
  ./catscripts/Categorize.sh
fi

rm FreeRealms.txt
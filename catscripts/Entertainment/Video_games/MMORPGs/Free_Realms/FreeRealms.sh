#!/bin/bash

export KEYWORDS_MMORPG_FREEREALMS="Free(| )Realms"

egrep -i "$KEYWORDS_MMORPG_FREEREALMS" newpages.txt > FreeRealms.txt

FREEREALMS=$(stat --print=%s FreeRealms.txt)

if [ $FREEREALMS -ne 0 ];
then	
  export CATFILE="FreeRealms.txt"
  export CATNAME="Free Realms"
  $CATEGORIZE
fi

rm FreeRealms.txt
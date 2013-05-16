#!/bin/bash

export KEYWORDS_MMORPG_DOFUS="Dofus"

egrep -i "$KEYWORDS_MMORPG_DOFUS" newpages.txt >> Dofus.txt

DOFUS=`stat --print=%s Dofus.txt`

if [ $DOFUS -ne 0 ];
then
  export CATFILE="Dofus.txt"
  export CATNAME="Dofus"
  $CATEGORIZE
fi

rm Dofus.txt
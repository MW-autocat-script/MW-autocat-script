#!/bin/bash

export KEYWORDS_MMORPG_CABAL="Cabal(| )Online|Altar of Karion"

egrep -i "$KEYWORDS_MMORPG_CABAL" newpages.txt >> CabalOnline.txt

CABAL=`stat --print=%s CabalOnline.txt`

if [ $CABAL -ne 0 ];
then
  export CATFILE="CabalOnline.txt"
  export CATNAME="Cabal Online"
  $CATEGORIZE
fi

rm CabalOnline.txt
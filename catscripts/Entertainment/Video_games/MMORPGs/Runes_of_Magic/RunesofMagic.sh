#!/bin/bash

export KEYWORDS_MMORPG_RUNESOFMAGIC="Runes(| )of(| )Magic"

egrep -i "$KEYWORDS_MMORPG_RUNESOFMAGIC" newpages.txt >> RunesofMagic.txt

RUNESOFMAGIC=$(stat --print=%s RunesofMagic.txt)

if [ $RUNESOFMAGIC -ne 0 ];
then
  export CATFILE="RunesofMagic.txt"
  export CATNAME="Runes of Magic"
  $CATEGORIZE
fi

rm RunesofMagic.txt
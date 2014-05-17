#!/bin/bash

export KEYWORDS_MMORPG_TALISMAN="Talisman(| )Online"

egrep -i "$KEYWORDS_MMORPG_TALISMAN" newpages.txt >> TalismanOnline.txt

TALISMAN=$(stat --print=%s TalismanOnline.txt)

if [ $TALISMAN -ne 0 ];
then
  export CATFILE="TalismanOnline.txt"
  export CATNAME="Talisman Online"
  $CATEGORIZE
fi

rm TalismanOnline.txt
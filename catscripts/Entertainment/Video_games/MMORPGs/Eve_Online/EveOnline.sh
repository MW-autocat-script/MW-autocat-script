#!/bin/bash

export KEYWORDS_MMORPG_EVE="Eve(| )Online"

egrep -i "$KEYWORDS_MMORPG_EVE" newpages.txt >> EveOnline.txt

EVE=`stat --print=%s EveOnline.txt`

if [ $EVE -ne 0 ];
then
  export CATFILE="EveOnline.txt"
  export CATNAME="Eve Online"
  $CATEGORIZE
fi

rm EveOnline.txt
#!/bin/bash

export KEYWORDS_MMORPG_ANARCHY="Anarchy(| )Online"

egrep -i "$KEYWORDS_MMORPG_ANARCHY" newpages.txt >> AnarchyOnline.txt

ANARCHY=`stat --print=%s AnarchyOnline.txt`

if [ $ANARCHY -ne 0 ];
then
  export CATFILE="AnarchyOnline.txt"
  export CATNAME="Anarchy Online"
  $CATEGORIZE
fi

rm AnarchyOnline.txt
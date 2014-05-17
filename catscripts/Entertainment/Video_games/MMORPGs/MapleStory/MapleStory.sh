#!/bin/bash

export KEYWORDS_MMORPG_MAPLESTORY="Maple(| )Story"

egrep -i "$KEYWORDS_MMORPG_MAPLESTORY" newpages.txt > MapleStory.txt

MAPLESTORY=$(stat --print=%s MapleStory.txt)

if [ $MAPLESTORY -ne 0 ];
then
  export CATFILE="MapleStory.txt"
  export CATNAME="MapleStory"
  $CATEGORIZE
fi

rm MapleStory.txt
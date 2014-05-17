#!/bin/bash

export KEYWORDS_MMORPG_AQW="(AdventureQuest|Adventure Quest)(World(|s)| World(|s))|AQW|Valencia"

egrep -i "$KEYWORDS_MMORPG_AQW" newpages.txt >> AdventureQuestWorlds.txt

AQW=$(stat --print=%s AdventureQuestWorlds.txt)

if [ $AQW -ne 0 ];
then
  export CATFILE="AdventureQuestWorlds.txt"
  export CATNAME="AdventureQuest Worlds"
  $CATEGORIZE
fi

rm AdventureQuestWorlds.txt

#!/bin/bash

export KEYWORDS_MMORPG_AQW="(AdventureQuest|Adventure Quest)(World(|s)| World(|s))|AQW|Valencia"

if [ "$1" == "" ];
then

  debug_start "AdventureQuest Worlds"

  AQW=$(egrep -i "$KEYWORDS_MMORPG_AQW" newpages.txt)

  if [ "$AQW" != "" ];
  then
    printf "%s" "$AQW" > AdventureQuestWorlds.txt
    export CATFILE="AdventureQuestWorlds.txt"
    export CATNAME="AdventureQuest Worlds"
    $CATEGORIZE
    rm AdventureQuestWorlds.txt
    unset AQW
  fi

  debug_end "AdventureQuest Worlds"

fi
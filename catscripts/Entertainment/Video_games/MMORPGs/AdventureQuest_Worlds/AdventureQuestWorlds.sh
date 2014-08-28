#!/bin/bash

export KEYWORDS_MMORPG_AQW="(AdventureQuest|Adventure Quest)(World(|s)| World(|s))|AQW|Valencia"

if [ "$1" == "" ];
then

  debug_start "AdventureQuest Worlds"

  AQW=$(egrep -i "$KEYWORDS_MMORPG_AQW" "$NEWPAGES")

  categorize "AQW" "AdventureQuest Worlds"

  debug_end "AdventureQuest Worlds"

fi
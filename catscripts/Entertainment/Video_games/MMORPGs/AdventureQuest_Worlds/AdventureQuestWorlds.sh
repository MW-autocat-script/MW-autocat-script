#!/bin/bash

egrep -i '(AdventureQuest|Adventure Quest)(World(|s)| World(|s))|AQW|Valencia' newpages.txt >> AdventureQuestWorlds.txt

AQW=`stat --print=%s AdventureQuestWorlds.txt`

if [ $AQW -ne 0 ];
then
  export CATFILE="AdventureQuestWorlds.txt"
  export CATNAME="AdventureQuest Worlds"
  $CATEGORIZE
fi

rm AdventureQuestWorlds.txt

#!/bin/bash

export KEYWORDS_MMORPG_GUILDWARS="Guild(| )War|PVX"

egrep -i "$KEYWORDS_MMORPG_GUILDWARS" newpages.txt >> GuildWars.txt

GUILDWARS=`stat --print=%s GuildWars.txt`

if [ $GUILDWARS -ne 0 ];
then
  export CATFILE="GuildWars.txt"
  export CATNAME="Guild Wars"
  $CATEGORIZE
fi

rm GuildWars.txt
#!/bin/bash

export KEYWORDS_MMORPG_GUILDWARS="Guild(| )War|PVX"

if [ "$1" == "" ];
then
  
  debug_start "Guild Wars"

  GUILDWARS=$(egrep -i "$KEYWORDS_MMORPG_GUILDWARS" "$NEWPAGES")

  if [ "$GUILDWARS" != "" ];
  then
    printf "%s" "$GUILDWARS" > GuildWars.txt
    export CATFILE="GuildWars.txt"
    export CATNAME="Guild Wars"
    $CATEGORIZE
    rm GuildWars.txt
    unset GUILDWARS
  fi

  debug_end "Guild Wars"

fi
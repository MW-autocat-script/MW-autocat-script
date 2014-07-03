#!/bin/bash

export KEYWORDS_MMORPG_MAFIA="Mafia(| )Wars"

if [ "$1" == "" ];
then

  debug_start "Mafia Wars"

  MAFIA=$(egrep -i "$KEYWORDS_MMORPG_MAFIA" newpages.txt)

  if [ "$MAFIA" != "" ];
  then
    printf "%s" "$MAFIA" > MafiaWars.txt
    export CATFILE="MafiaWars.txt"
    export CATNAME="Mafia Wars"
    $CATEGORIZE
    rm MafiaWars.txt
    unset MAFIA
  fi

  debug_end "Mafia Wars"

fi
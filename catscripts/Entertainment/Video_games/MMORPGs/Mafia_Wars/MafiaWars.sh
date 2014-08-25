#!/bin/bash

export KEYWORDS_MMORPG_MAFIA="Mafia(| )Wars"

if [ "$1" == "" ];
then

  debug_start "Mafia Wars"

  MAFIA=$(egrep -i "$KEYWORDS_MMORPG_MAFIA" "$NEWPAGES")

  categorize "MAFIA" "Mafia Wars"

  debug_end "Mafia Wars"

fi
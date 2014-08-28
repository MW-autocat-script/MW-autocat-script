#!/bin/bash

export KEYWORDS_MMORPG_ANARCHY="Anarchy(| )Online"

if [ "$1" == "" ];
then

  debug_start "Anarchy Online"

  ANARCHY=$(egrep -i "$KEYWORDS_MMORPG_ANARCHY" "$NEWPAGES")

  categorize "ANARCHY" "Anarchy Online"

  debug_end "Anarchy Online"

fi
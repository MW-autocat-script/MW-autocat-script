#!/bin/bash

KEYWORDS_MMORPG_ROHAN="\bRohan|Katar(| )of(| )Destiny"

if [ "$1" == "" ];
then

  debug_start "Rohan: Blood Feud"

  ROHAN=$(egrep -i "$KEYWORDS_MMORPG_ROHAN" "$NEWPAGES")

  categorize "ROHAN" "Rohan: Blood Feud"

  debug_end "Rohan: Blood Feud"

fi
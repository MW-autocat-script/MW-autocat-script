#!/bin/bash

KEYWORDS_GAMBIA="Gambia"
KEYWORDS_GAMBIA_ALL="$KEYWORDS_GAMBIA"

if [ "$1" == "" ];
then

  debug_start "Gambia"

  GAMBIA=$(egrep -i "$KEYWORDS_GAMBIA" "$NEWPAGES")

  categorize "GAMBIA" "Gambia"

  debug_end "Gambia"

fi
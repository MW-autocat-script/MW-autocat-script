#!/bin/bash

KEYWORDS_CHINCHILLAS="Chinchilla"
KEYWORDS_CHINCHILLAS_ALL="$KEYWORDS_CHINCHILLAS"

if [ "$1" == "" ];
then

  debug_start "Chinchillas"

  CHINCHILLAS=$(egrep -i "$KEYWORDS_CHINCHILLAS" "$NEWPAGES")

  categorize "CHINCHILLAS" "Chinchillas"

  debug_end "Chinchillas"

fi
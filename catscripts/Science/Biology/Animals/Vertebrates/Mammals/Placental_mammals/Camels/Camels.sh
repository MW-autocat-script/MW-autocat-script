#!/bin/bash

KEYWORDS_CAMELS="Camel(\b|s)|Bactrian|Dromedary"
KEYWORDS_CAMELS_EXCLUDE="joe(| )the(| )camel|cigarette|camel(| )spider"
KEYWORDS_CAMELS_ALL="$KEYWORDS_CAMELS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Camels"

  CAMELS=$(egrep -i "$KEYWORDS_CAMELS" "$NEWPAGES" | egrep -iv "$KEYWORDS_CAMELS_EXCLUDE")

  categorize "CAMELS" "Camels"

  debug_end "Camels"

fi
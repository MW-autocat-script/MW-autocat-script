#!/bin/bash

KEYWORDS_BANDS_BONJOVI="Bon(| )Jovi"
KEYWORDS_BANDS_BONJOVI_EXCLUDE="Jon(| )Bon(| )Jovi"
KEYWORDS_BANDS_BONJOVI_ALL="$KEYWORDS_BANDS_BONJOVI"

if [ "$1" == "" ];
then

  debug_start "Bon Jovi"

  BONJOVI=$(egrep -i "$KEYWORDS_BANDS_BONJOVI" "$NEWPAGES" | egrep -iv "$KEYWORDS_BANDS_BONJOVI_EXCLUDE")

  categorize "BONJOVI" "Bon Jovi"

  debug_end "Bon Jovi"

fi
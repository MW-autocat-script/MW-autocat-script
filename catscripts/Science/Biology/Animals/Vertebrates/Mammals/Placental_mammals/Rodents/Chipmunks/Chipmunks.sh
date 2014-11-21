#!/bin/bash

. ./catscripts/Entertainment/Music/Bands/Alvin_and_the_Chipmunks/Alvin.sh norun #KEYWORDS_ALVINANDTHECHIPMUNKS_ALL

KEYWORDS_CHIPMUNKS="Chipmunk"
KEYWORDS_CHIPMUNKS_EXCLUDE="$KEYWORDS_ALVINANDTHECHIPMUNKS_ALL|rapper|Disney|Chip(| )(|')(|a)n(|d)(|')(| )Dale"
KEYWORDS_CHIPMUNKS_ALL="$KEYWORDS_CHIPMUNKS"

if [ "$1" == "" ];
then

  debug_start "Chipmunks"

  CHIPMUNKS=$(egrep -i "$KEYWORDS_CHIPMUNKS" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHIPMUNKS_EXCLUDE")

  categorize "CHIPMUNKS" "Chipmunks"

  debug_end "Chipmunks"

fi
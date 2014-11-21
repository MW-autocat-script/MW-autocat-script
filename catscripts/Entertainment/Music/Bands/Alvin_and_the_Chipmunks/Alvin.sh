#!/bin/bash

KEYWORDS_ALVINANDTHECHIPMUNKS="(Alvin|Simon|Theodore|Dave).+chipmunk|chipmunk.+(alvin|simon|theodore|Dave)|Chip(|p)ettes|(Alvin|Simon|Theodore|Dave)(| )Seville|(Brittany|Jeanette|Eleanor)(| )Miller"
KEYWORDS_ALVINANDTHECHIPMUNKS_ALL="$KEYWORDS_ALVINANDTHECHIPMUNKS"

if [ "$1" == "" ];
then
  
  debug_start "Alvin and the Chipmunks"

  ALVIN=$(egrep -i "$KEYWORDS_ALVINANDTHECHIPMUNKS" "$NEWPAGES")

  categorize "ALVIN" "Alvin and the Chipmunks"

  debug_end "Alvin and the Chipmunks"

fi
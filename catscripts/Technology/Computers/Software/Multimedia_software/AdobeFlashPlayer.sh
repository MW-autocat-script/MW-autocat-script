#!/bin/bash

KEYWORDS_ADOBEFLASHPLAYER="Flash(| )player"
KEYWORDS_ADOBEFLASHPLAYER_ALL="$KEYWORDS_ADOBEFLASHPLAYER"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Adobe Flash Player"

  FLASHPLAYER=$(egrep -i "$KEYWORDS_ADOBEFLASHPLAYER" "$NEWPAGES")

  categorize "FLASHPLAYER" "Adobe Flash Player"

  debug_end "Adobe Flash Player"

fi
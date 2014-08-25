#!/bin/bash

KEYWORDS_ACTRESS_SELENAGOMEZ="Selena(| )Gomez"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Selena Gomez"

  SELENAGOMEZ=$(egrep -i "$KEYWORDS_ACTRESS_SELENAGOMEZ" "$NEWPAGES")

  categorize "SELENAGOMEZ" "Selena Gomez"

  debug_end "Selena Gomez"

fi

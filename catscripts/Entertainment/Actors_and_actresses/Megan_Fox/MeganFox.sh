#!/bin/bash

KEYWORDS_ACTRESS_MEGANFOX="Megan(| )Fox"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Megan Fox"

  MEGANFOX=$(egrep -i "$KEYWORDS_ACTRESS_MEGANFOX" "$NEWPAGES")

  categorize "MEGANFOX" "Megan Fox"

  debug_end "Megan Fox"

fi

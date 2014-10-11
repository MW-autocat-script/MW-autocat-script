#!/bin/bash

KEYWORDS_ICELAND="\bIceland"
KEYWORDS_ICELAND_EXCLUDE="Icelandic"
KEYWORDS_ICELAND_ALL="$KEYWORDS_ICELAND"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Iceland"

  ICELAND=$(egrep -i "$KEYWORDS_ICELAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_ICELAND_EXCLUDE")

  categorize "ICELAND" "Iceland"

  debug_end "Iceland"

fi
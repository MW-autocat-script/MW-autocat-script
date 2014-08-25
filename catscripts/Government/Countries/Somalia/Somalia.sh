#!/bin/bash

KEYWORDS_SOMALIA="Somali"
KEYWORDS_SOMALIA_ALL="$KEYWORDS_SOMALIA"

if [ "$1" == "" ];
then
  
  debug_start "Somalia"

  SOMALIA=$(egrep -i "$KEYWORDS_SOMALIA" "$NEWPAGES")

  categorize "SOMALIA" "Somalia"

  debug_end "Somalia"

fi
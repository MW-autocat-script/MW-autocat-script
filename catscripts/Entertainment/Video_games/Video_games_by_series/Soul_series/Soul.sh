#!/bin/bash

KEYWORDS_SOULSERIES="Soul(| )(edge|calib(u|e)r)"
KEYWORDS_SOULSERIES_ALL="$KEYWORDS_SOULSERIES"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Soul series"

  SOUL=$(egrep -i "$KEYWORDS_SOULSERIES" "$NEWPAGES")

  categorize "SOUL" "Soul series"

  debug_end "Soul series"

fi
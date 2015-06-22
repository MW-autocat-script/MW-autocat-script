#!/bin/bash

KEYWORDS_DRAGONFABLE="Dragon(| )Fab(el|le)"
KEYWORDS_DRAGONFABLE_ALL="$KEYWORDS_DRAGONFABLE"

if [ "$1" == "" ];
then
  
  debug_start "DragonFable"

  DRAGONFABLE=$(egrep -i "$KEYWORDS_DRAGONFABLE" "$NEWPAGES")

  categorize "DRAGONFABLE" "DragonFable"

  debug_end "DragonFable"

fi
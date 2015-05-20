#!/bin/bash

KEYWORDS_ISLEOFMAN="Isle(| )of(| )Man"
KEYWORDS_ISLEOFMAN_ALL="$KEYWORDS_ISLEOFMAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Isle of Man"

  ISLEOFMAN=$(egrep -i "$KEYWORDS_ISLEOFMAN" "$NEWPAGES")

  categorize "ISLEOFMAN" "Isle of Man"

  debug_end "Isle of Man"

fi
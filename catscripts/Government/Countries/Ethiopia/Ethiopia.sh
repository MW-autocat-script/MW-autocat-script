#!/bin/bash

KEYWORDS_ETHIOPIA="Ethiopia|Ghadafi|Abyssinia"
KEYWORDS_ETHIOPIA_ALL="$KEYWORDS_ETHIOPIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Ethiopia"

  ETHIOPIA=$(egrep -i "$KEYWORDS_ETHIOPIA" "$NEWPAGES")

  categorize "ETHIOPIA" "Ethiopia"

  debug_end "Ethiopia"

fi
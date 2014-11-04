#!/bin/bash

KEYWORDS_GUINEAPIGS="guinea(| )pig"
KEYWORDS_GUINEAPIGS_ALL="$KEYWORDS_GUINEAPIGS"

if [ "$1" == "" ];
then
  
  debug_start "Guinea pigs"

  GUINEAPIGS=$(egrep -i "$KEYWORDS_GUINEAPIGS" "$NEWPAGES")

  categorize "GUINEAPIGS" "Guinea pigs"

  debug_end "Guinea pigs"

fi
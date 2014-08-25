#!/bin/bash

KEYWORDS_CYPRUS="Cy(pr|rp)us"
KEYWORDS_CYPRUS_ALL="$KEYWORDS_CYPRUS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Cyprus"

  CYPRUS=$(egrep -i "$KEYWORDS_CYPRUS" "$NEWPAGES")

  categorize "CYPRUS" "Cyprus"

  debug_end "Cyprus"

fi
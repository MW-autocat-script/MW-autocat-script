#!/bin/bash

KEYWORDS_SENEGAL="S(é|e)n(é|e)gal"
KEYWORDS_SENEGAL_ALL="$KEYWORDS_SENEGAL" 

if [ "$1" == "" ];
then
  
  debug_start "Senegal"

  SENEGAL=$(egrep -i "$KEYWORDS_SENEGAL" "$NEWPAGES")

  categorize "SENEGAL" "Senegal"

  debug_end "Senegal"

fi
#!/bin/bash

KEYWORDS_CODEGEASS="Geass|Knightmare(| )frame|lelouch"

if [ "$1" == "" ];
then
  
  debug_start "Code Geass"

  GEASS=$(egrep -i "$KEYWORDS_CODEGEASS" "$NEWPAGES")

  categorize "GEASS" "Code Geass"

  debug_end "Code Geass"

fi
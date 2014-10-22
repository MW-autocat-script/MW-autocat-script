#!/bin/bash

KEYWORDS_PORPOISES="Porpoise"
KEYWORDS_PORPOISES_ALL="$KEYWORDS_PORPOISES"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Porpoises"

  PORPOISES=$(egrep -i "$KEYWORDS_PORPOISES" "$NEWPAGES")

  categorize "PORPOISES" "Porpoises"

  debug_end "Porpoises"

fi
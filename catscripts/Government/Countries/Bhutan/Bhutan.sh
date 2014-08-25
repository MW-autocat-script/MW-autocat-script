#!/bin/bash

KEYWORDS_BHUTAN="Bhutan"
KEYWORDS_BHUTAN_ALL="$KEYWORDS_BHUTAN"

if [ "$1" == "" ];
then
  
  debug_start "Bhutan"

  BHUTAN=$(egrep -i "$KEYWORDS_BHUTAN" "$NEWPAGES")

  categorize "BHUTAN" "Bhutan"

  debug_end "Bhutan"

fi
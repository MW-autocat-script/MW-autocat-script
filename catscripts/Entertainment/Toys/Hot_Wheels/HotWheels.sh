#!/bin/bash

KEYWORDS_HOTWHEELS="Hot(| )Wheels"
KEYWORDS_HOTWHEELS_ALL="$KEYWORDS_HOTWHEELS"

if [ "$1" == "" ];
then
  
  debug_start "Hot Wheels"

  HOTWHEELS=$(egrep -i "$KEYWORDS_HOTWHEELS" "$NEWPAGES")

  categorize "HOTWHEELS" "Hot Wheels"

  debug_end "Hot Wheels"

fi
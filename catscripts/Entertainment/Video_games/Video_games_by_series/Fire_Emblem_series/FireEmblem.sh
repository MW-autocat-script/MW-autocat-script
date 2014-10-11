#!/bin/bash

KEYWORDS_FIREEMBLEM="Fire(| )Emblem"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Fire Emblem series"

  EMBLEM=$(egrep -i "$KEYWORDS_FIREEMBLEM" "$NEWPAGES")

  categorize "EMBLEM" "Fire Emblem series"

  debug_end "Fire Emblem series"

fi
  
#!/bin/bash

KEYWORDS_BUDDHISM="Budd(|h)(a|ist|ism)|Dalai(| )Lama|Bodhi"
KEYWORDS_BUDDHISM_EXCLUDE="Bodhi(| )Linux"
KEYWORDS_BUDDHISM_ALL="$KEYWORDS_BUDDHISM"

if [ "$1" == "" ];
then
  
  debug_start "Buddhism"

  BUDDHISM=$(egrep -i "$KEYWORDS_BUDDHISM" "$NEWPAGES" | egrep -iv "$KEYWORDS_BUDDHISM_EXCLUDE")

  categorize "BUDDHISM" "Buddhism"

  debug_end "Buddhism"

fi
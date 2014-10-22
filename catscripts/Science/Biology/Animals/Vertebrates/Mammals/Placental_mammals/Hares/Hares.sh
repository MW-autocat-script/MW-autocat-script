#!/bin/bash

KEYWORDS_HARES="\bhare(\b|s)"
KEYWORDS_HARES_EXCLUDE="O'Hare|March Hare|Hare Krishna|Fort Hare|(Doctor|Dr)(|\.)(| )Hare|Tortoise.+Hare|Dynasty(| )Warrior|hare(-| )wallaby"
KEYWORDS_HARES_ALL="$KEYWORDS_HARES"

if [ "$1" == "" ];
then
  
  debug_start "Hares"

  HARES=$(egrep -i "$KEYWORDS_HARES" "$NEWPAGES" | egrep -iv "$KEYWORDS_HARES_EXCLUDE")

  categorize "HARES" "Hares"

  debug_end "Hares"

fi
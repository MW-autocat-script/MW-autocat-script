#!/bin/bash

KEYWORDS_ACTOR_PATRICKSWAYZE="Patrick(| )Swayze"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Patrick Swayze"

  SWAYZE=$(egrep -i "$KEYWORDS_ACTOR_PATRICKSWAYZE" "$NEWPAGES")

  categorize "SWAYZE" "Patrick Swayze"

  debug_end "Patrick Swayze"

fi

#!/bin/bash

KEYWORDS_ACTOR_ROBERTPATTINSON="Robert(| )Pattinson"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Robert Pattinson"

  PATTINSON=$(egrep -i "$KEYWORDS_ACTOR_ROBERTPATTINSON" "$NEWPAGES")

  categorize "PATTINSON" "Robert Pattinson"

  debug_end "Robert Pattinson"

fi

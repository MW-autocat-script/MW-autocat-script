#!/bin/bash

KEYWORDS_ACTOR_ORLANDOBLOOM="Orlando(| )Bloom"

if [ "$1" == "" ];
then

  debug_start "Orlando Bloom"

  ORLANDOBLOOM=$(egrep -i "$KEYWORDS_ACTOR_ORLANDOBLOOM" "$NEWPAGES")

  categorize "ORLANDOBLOOM" "Orlando Bloom"

  debug_end "Orlando Bloom"

fi
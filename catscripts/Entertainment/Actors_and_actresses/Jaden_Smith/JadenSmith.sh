#!/bin/bash

KEYWORDS_ACTOR_JADENSMITH="Jaden(| )Smith"

if [ "$1" == "" ];
then

  debug_start "Jaden Smith"

  JADENSMITH=$(egrep -i "$KEYWORDS_ACTOR_JADENSMITH" "$NEWPAGES")

  categorize "JADENSMITH" "Jaden Smith"

  debug_end "Jaden Smith"

fi
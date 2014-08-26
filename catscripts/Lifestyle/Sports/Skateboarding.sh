#!/bin/bash

KEYWORDS_SKATEBOARDING="Skate(| )board"
KEYWORDS_SKATEBOARDING_ALL="$KEYWORDS_SKATEBOARDING"

if [ "$1" == "" ];
then

  debug_start "Skateboarding"

  SKATEBOARDING=$(egrep -i "$KEYWORDS_SKATEBOARDING" "$NEWPAGES")

  categorize "SKATEBOARDING" "Skateboarding"

  debug_end "Skateboarding"

fi
#!/bin/bash

readonly KEYWORDS_ACTOR_JACKIECHAN="Jackie(| )Chan"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Jackie Chan"

  JACKIECHAN=$(egrep -i "$KEYWORDS_ACTOR_JACKIECHAN" "$NEWPAGES")

  categorize "JACKIECHAN" "Jackie Chan"

  debug_end "Jackie Chan"

fi
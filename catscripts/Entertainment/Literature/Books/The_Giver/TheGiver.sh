#!/bin/bash

KEYWORDS_THEGIVER="The(| )Giver"

if [ "$1" == "" ];
then

  debug_start "The Giver"

  GIVER=$(egrep -i "$KEYWORDS_THEGIVER" "$NEWPAGES")

  categorize "GIVER" "The Giver"

  debug_end "The Giver"

fi
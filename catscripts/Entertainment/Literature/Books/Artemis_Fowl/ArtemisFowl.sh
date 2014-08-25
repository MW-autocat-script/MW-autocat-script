#!/bin/bash

KEYWORDS_ARTEMISFOWL="Artemis(| )Fowl"

if [ "$1" == "" ];
then
  
  debug_start "Artemis Fowl"

  ARTEMIS=$(egrep -i "$KEYWORDS_ARTEMISFOWL" "$NEWPAGES")

  categorize "ARTEMIS" "Artemis Fowl"

  debug_end "Artemis Fowl"

fi
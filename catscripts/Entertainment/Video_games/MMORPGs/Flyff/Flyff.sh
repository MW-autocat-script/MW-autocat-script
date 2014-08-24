#!/bin/bash

export KEYWORDS_MMORPG_FLYFF="Flyff"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Flyff"

  FLYFF=$(egrep -i "$KEYWORDS_MMORPG_FLYFF" "$NEWPAGES")

  categorize "FLYFF" "Flyff"

  debug_end "Flyff"

fi
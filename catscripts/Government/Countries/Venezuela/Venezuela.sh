#!/bin/bash

KEYWORDS_VENEZUELA="Venezuela"

if [ "$1" == "" ];
then

  debug_start "Venezuela"

  VENEZUELA=$(egrep -i "$KEYWORDS_VENEZUELA" "$NEWPAGES")

  categorize "VENEZUELA" "Venezuela"

  debug_end "Venezuela"

fi
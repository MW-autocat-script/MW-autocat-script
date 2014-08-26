#!/bin/bash

KEYWORDS_MALDIVES="Maldives"
KEYWORDS_MALDIVES_ALL="$KEYWORDS_MALDIVES"

if [ "$1" == "" ];
then
  
  debug_start "Maldives"

  MALDIVES=$(egrep -i "$KEYWORDS_MALDIVES" "$NEWPAGES")

  categorize "MALDIVES" "Maldives"

  debug_end "Maldives"

fi
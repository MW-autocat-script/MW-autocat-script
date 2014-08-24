#!/bin/bash

KEYWORDS_ITUNES="iTunes|\bi Tunes"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "iTunes"

  ITUNES=$(egrep -i "$KEYWORDS_ITUNES" "$NEWPAGES")

  categorize "ITUNES" "iTunes"

  debug_end "iTunes"

fi
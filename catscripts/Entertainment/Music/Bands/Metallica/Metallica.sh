#!/bin/bash

KEYWORDS_METALLICA="Metallica"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Metallica"

  METALLICA=$(egrep -i "$KEYWORDS_METALLICA" "$NEWPAGES")

  categorize "METALLICA" "Metallica"

  debug_end "Metallica"

fi
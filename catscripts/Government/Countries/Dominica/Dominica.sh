#!/bin/bash

KEYWORDS_DOMINICA="Dominica\b"
KEYWORDS_DOMINICA_ALL="$KEYWORDS_DOMINICA"

if [ "$1" == "" ];
then

  debug_start "Dominica"

  DOMINICA=$(egrep -i "$KEYWORDS_DOMINICA" "$NEWPAGES")

  categorize "DOMINICA" "Dominica"

  debug_end "Dominica"

fi
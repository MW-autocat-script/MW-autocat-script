#!/bin/bash

KEYWORDS_HONDURAS="Hondura(s|n)"
KEYWORDS_HONDURAS_ALL="$KEYWORDS_HONDURAS"

if [ "$1" == "" ];
then

  debug_start "Honduras"

  HONDURAS=$(egrep -i "$KEYWORDS_HONDURAS" "$NEWPAGES")

  categorize "HONDURAS" "Honduras"

  debug_end "Honduras"

fi
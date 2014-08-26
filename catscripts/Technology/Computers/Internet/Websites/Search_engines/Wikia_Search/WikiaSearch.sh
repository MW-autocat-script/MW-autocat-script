#!/bin/bash

KEYWORDS_WIKIASEARCH="Wikia(| )Search"

if [ "$1" == "" ];
then

  debug_start "Wikia Search"

  WIKIASEARCH=$(egrep -i "$KEYWORDS_WIKIASEARCH" "$NEWPAGES")

  categorize "WIKIASEARCH" "Wikia Search"

  debug_end "Wikia Search"

fi

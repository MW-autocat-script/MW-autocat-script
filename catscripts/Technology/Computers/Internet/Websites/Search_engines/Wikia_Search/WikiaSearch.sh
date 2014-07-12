#!/bin/bash

KEYWORDS_WIKIASEARCH="Wikia(| )Search"

if [ "$1" == "" ];
then

  debug_start "Wikia Search"

  WIKIASEARCH=$(egrep -i "$KEYWORDS_WIKIASEARCH" newpages.txt)

  if [ "$WIKIASEARCH" != "" ];
  then
    printf "%s" "$WIKIASEARCH" > WikiaSearch.txt
    export CATFILE="WikiaSearch.txt"
    export CATNAME="Wikia Search"
    $CATEGORIZE
    rm WikiaSearch.txt
    unset WIKIASEARCH
  fi

  debug_end "Wikia Search"

fi

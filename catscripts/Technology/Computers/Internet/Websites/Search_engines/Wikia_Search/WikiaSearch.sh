#!/bin/bash

KEYWORDS_WIKIASEARCH="Wikia(| )Search"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_WIKIASEARCH" newpages.txt >> WikiaSearch.txt

  WIKIASEARCH=`stat --print=%s WikiaSearch.txt`

  if [ $WIKIASEARCH -ne 0 ];
  then
    export CATFILE="WikiaSearch.txt"
    export CATNAME="Wikia Search"
    $CATEGORIZE
  fi

  rm WikiaSearch.txt

fi

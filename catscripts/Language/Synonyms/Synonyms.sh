#!/bin/bash

KEYWORDS_SYNONYMS="synonym|another word for"

if [ "$1" == "" ]; #Normal operation
then

  SYNONYMS=$(egrep -i "$KEYWORDS_SYNONYMS" newpages.txt)

  debug_start "Synonyms"

  if [ "$SYNONYMS" != "" ];
  then
    printf "%s" "$SYNONYMS" > Synonyms.txt
    export CATFILE="Synonyms.txt"
    export CATNAME="Synonyms"
    $CATEGORIZE
    rm Synonyms.txt
    unset SYNONYMS
  fi

  debug_end "Synonyms"

fi

#!/bin/bash

KEYWORDS_ZUNE="\bZune"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Zune"

  ZUNE=$(egrep -i "$KEYWORDS_ZUNE" newpages.txt)

  if [ "$ZUNE" != "" ];
  then
    printf "%s" "$ZUNE" > Zune.txt
    export CATFILE="Zune.txt"
    export CATNAME="Zune"
    $CATEGORIZE
    rm Zune.txt
    unset ZUNE
  fi

  debug_end "Zune"

fi
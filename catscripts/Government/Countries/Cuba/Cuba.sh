#!/bin/bash

KEYWORDS_CUBA="\bCuba|Fidel Castro|Raul Castro|Havana"
KEYWORDS_CUBA_EXCLUDE="Cuba(| )Gooding"
KEYWORDS_CUBA_ALL="$KEYWORDS_CUBA"

if [ "$1" == "" ];
then

  debug_start "Cuba"

  CUBA="$(egrep -i "$KEYWORDS_CUBA" newpages.txt | egrep -iv "$KEYWORDS_CUBA_EXCLUDE")"

  if [ "$CUBA" != "" ];
  then
    printf "%s" "$CUBA" > Cuba.txt
    export CATFILE="Cuba.txt"
    export CATNAME="Cuba"
    $CATEGORIZE
    rm Cuba.txt
    unset CUBA
  fi

  debug_end "Cuba"

fi

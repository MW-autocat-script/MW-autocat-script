#!/bin/bash

KEYWORDS_CHEVROLETSUBURBAN="Chev(y|rolet)(| )Suburban|[0-9]{2,}Suburban"

if [ "$1" == "" ];
then

  debug_start "Chevrolet Suburban"

  SUBURBAN=$(egrep -i "$KEYWORDS_CHEVROLETSUBURBAN" newpages.txt)

  if [ "$SUBURBAN" != "" ];
  then
    printf "%s" "$SUBURBAN" > Suburban.txt
    export CATFILE="Suburban.txt"
    export CATNAME="Chevrolet Suburban"
    $CATEGORIZE
    rm Suburban.txt
    unset SUBURBAN
  fi

  debug_end "Chevrolet Suburban"

fi
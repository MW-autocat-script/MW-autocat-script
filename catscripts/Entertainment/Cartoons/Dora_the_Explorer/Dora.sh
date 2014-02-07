#!/bin/bash

KEYWORDS_DORA="Dora(| )the(| )Explorer"

if [ "$1" == "" ];
then

  debug_start "Dora the Explorer"

  DORA="$(egrep -i "$KEYWORDS_DORA" newpages.txt)"

  if [ "$DORA" != "" ];
  then
    printf "%s" "$DORA" > Dora.txt
    export CATFILE="Dora.txt"
    export CATNAME="Dora the Explorer"
    $CATEGORIZE
    rm Dora.txt
    unset DORA
  fi

  debug_end "Dora the Explorer"

fi

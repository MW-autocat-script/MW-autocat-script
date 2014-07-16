#!/bin/bash

KEYWORDS_ACTOR_ZACEFRON="Zac(| )Efron"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Zac Efron"

  ZACEFRON=$(egrep -i "$KEYWORDS_ACTOR_ZACEFRON" newpages.txt)

  if [ "$ZACEFRON" != "" ];
  then
    printf "%s" "$ZACEFRON" > ZacEfron.txt
    export CATFILE="ZacEfron.txt"
    export CATNAME="Zac Efron"
    $CATEGORIZE
    rm ZacEfron.txt
    unset ZACEFRON
  fi

  debug_end "Zac Efron"

fi
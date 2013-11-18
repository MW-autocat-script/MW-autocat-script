#!/bin/bash

KEYWORDS_ACTOR_ZACEFRON="Zac(| )Efron"

if [ "$1" == "" ]; #Normal operation
then

  ZACEFRON=`egrep -i "$KEYWORDS_ACTOR_ZACEFRON" newpages.txt`

  if [ "$ZACEFRON" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_ZACEFRON" newpages.txt > ZacEfron.txt
    export CATFILE="ZacEfron.txt"
    export CATNAME="Zac Efron"
    $CATEGORIZE
    rm ZacEfron.txt
    unset ZACEFRON
  fi

fi
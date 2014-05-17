#!/bin/bash

KEYWORDS_NICKELBACK="Nick(el|le)back"

if [ "$1" == "" ]; #Normal operation
then

  NICKELBACK=$(egrep -i "$KEYWORDS_NICKELBACK" newpages.txt)

  if [ "$NICKELBACK" != "" ];
  then
    printf "$NICKELBACK" > Nickelback.txt
    export CATFILE="Nickelback.txt"
    export CATNAME="Nickelback"
    $CATEGORIZE
    rm Nickelback.txt
    unset NICKELBACK
  fi

fi
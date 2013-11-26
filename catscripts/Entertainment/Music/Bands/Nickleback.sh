#!/bin/bash

KEYWORDS_NICKLEBACK="Nickleback"

if [ "$1" == "" ]; #Normal operation
then

  NICKLEBACK=`egrep -i "$KEYWORDS_NICKLEBACK" newpages.txt`

  if [ "$NICKLEBACK" != "" ];
  then
    egrep -i "$KEYWORDS_NICKLEBACK" newpages.txt > Nickleback.txt
    export CATFILE="Nickleback.txt"
    export CATNAME="Nickleback"
    $CATEGORIZE
    rm Nickleback.txt
    unset NICKLEBACK
  fi

fi
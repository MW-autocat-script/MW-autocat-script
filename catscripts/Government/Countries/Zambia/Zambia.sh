#!/bin/bash

KEYWORDS_ZAMBIA="Zambia"
KEYWORDS_ZAMBIA_ALL="Zambia"

if [ "$1" == "" ];
then
  
  debug_start "Zambia"

  ZAMBIA=$(egrep -i "$KEYWORDS_ZAMBIA" newpages.txt)

  if [ "$ZAMBIA" != "" ];
  then
    printf "%s" "$ZAMBIA" > Zambia.txt
    export CATFILE="Zambia.txt"
    export CATNAME="Zambia"
    $CATEGORIZE
    rm Zambia.txt
    unset ZAMBIA
  fi

  debug_end "Zambia"

fi
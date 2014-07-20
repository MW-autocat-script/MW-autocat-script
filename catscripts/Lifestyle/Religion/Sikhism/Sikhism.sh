#!/bin/bash

KEYWORDS_SIKHISM="\bSikh"
KEYWORDS_SIKHISM_ALL="$KEYWORDS_SIKHISM"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Sikhism"

  SIKHISM=$(egrep -i "$KEYWORDS_SIKHISM" newpages.txt)

  if [ "$SIKHISM" != "" ];
  then
    printf "%s" "$SIKHISM" > Sikhism.txt
    export CATFILE="Sikhism.txt"
    export CATNAME="Sikhism"
    $CATEGORIZE
    rm Sikhism.txt
    unset SIKHISM
  fi

  debug_end "Sikhism"

fi

#!/bin/bash

KEYWORDS_POLIO="Polio"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Polio"

  POLIO=$(egrep -i "$KEYWORDS_POLIO" "$NEWPAGES")

  if [ "$POLIO" != "" ];
  then
    printf "%s" "$POLIO" > Polio.txt
    export CATFILE="Polio.txt"
    export CATNAME="Polio"
    $CATEGORIZE
    rm Polio.txt
    unset POLIO
  fi

  debug_end "Polio"

fi
#!/bin/bash

KEYWORDS_HAITI="Haiti"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Haiti"

  HAITI=$(egrep -i "$KEYWORDS_HAITI" newpages.txt)

  if [ "$HAITI" != "" ];
  then
    printf "%s" "$HAITI" > Haiti.txt
    export CATFILE="Haiti.txt"
    export CATNAME="Haiti"
    $CATEGORIZE
    rm Haiti.txt
    unset HAITI
  fi

  debug_end "Haiti"

fi
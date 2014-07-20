#!/bin/bash

KEYWORDS_SCIENTOLOGY="scientology|scientologist|lord xenu"
KEYWORDS_SCIENTOLOGY_ALL="$KEYWORDS_SCIENTOLOGY"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Scientology"

  SCIENTOLOGY=$(egrep -i "$KEYWORDS_SCIENTOLOGY" newpages.txt)

  if [ "$SCIENTOLOGY" != "" ];
  then
    printf "%s" "$SCIENTOLOGY" > Scientology.txt
    export CATFILE="Scientology.txt"
    export CATNAME="Scientology"
    $CATEGORIZE
    rm Scientology.txt
    unset SCIENTOLOGY
  fi

  debug_end "Scientology"

fi
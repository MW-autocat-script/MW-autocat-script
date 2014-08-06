#!/bin/bash

KEYWORDS_SEYCHELLES="Seychelles"
KEYWORDS_SEYCHELLES_ALL="$KEYWORDS_SEYCHELLES"

if [ "$1" == "" ];
then
  
  debug_start "Seychelles"

  SEYCHELLES=$(egrep -i "$KEYWORDS_SEYCHELLES" newpages.txt)

  if [ "$SEYCHELLES" != "" ];
  then
    printf "%s" "$SEYCHELLES" > Seychelles.txt
    export CATFILE="Seychelles.txt"
    export CATNAME="Seychelles"
    $CATEGORIZE
    rm Seychelles.txt
    unset SEYCHELLES
  fi

  debug_end "Seychelles"

fi
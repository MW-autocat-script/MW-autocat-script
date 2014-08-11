#!/bin/bash

KEYWORDS_TONGA="\bTonga(|s)\b|Tongan"
KEYWORDS_TONGA_ALL="$KEYWORDS_TONGA"

if [ "$1" == "" ];
then
  
  debug_start "Tonga" 

  TONGA=$(egrep -i "$KEYWORDS_TONGA" newpages.txt)

  if [ "$TONGA" != "" ];
  then
    printf "%s" "$TONGA" > Tonga.txt
    export CATFILE="Tonga.txt"
    export CATNAME="Tonga"
    $CATEGORIZE
    rm Tonga.txt
    unset TONGA
  fi

  debug_end "Tonga"

fi
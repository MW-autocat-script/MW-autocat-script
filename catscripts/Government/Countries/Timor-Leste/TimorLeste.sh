#!/bin/bash

KEYWORDS_TIMORLESTE="\bTimor|East(| )Timor"
KEYWORDS_TIMORLESTE_ALL="$KEYWORDS_TIMORLESTE"

if [ "$1" == "" ];
then
  
  debug_start "Timor-Leste"

  TIMORLESTE=$(egrep -i "$KEYWORDS_TIMORLESTE" newpages.txt)

  if [ "$TIMORLESTE" != "" ];
  then
    printf "%s" "$TIMORLESTE" > TimorLeste.txt
    export CATFILE="TimorLeste.txt"
    export CATNAME="Timor-Leste.txt"
    $CATEGORIZE
    rm TimorLeste.txt
    unset TIMORLESTE
  fi

  debug_end "Timor-Leste"

fi
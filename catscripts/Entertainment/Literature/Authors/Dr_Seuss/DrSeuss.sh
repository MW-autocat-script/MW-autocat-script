#!/bin/bash

KEYWORDS_DRSEUSS="\bSeuss|Theodore(| )(Geisel|Giesel)"

if [ "$1" == "" ];
then
  
  debug_start "Dr. Seuss"

  SEUSS=$(egrep -i "$KEYWORDS_DRSEUSS" newpages.txt)

  if [ "$SEUSS" != "" ];
  then
    printf "%s" "$SEUSS" > Seuss.txt
    export CATFILE="Seuss.txt"
    export CATNAME="Dr. Seuss"
    $CATEGORIZE
    rm Seuss.txt
    unset SEUSS
  fi

  debug_end "Dr. Seuss"

fi
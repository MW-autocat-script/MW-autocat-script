#!/bin/bash

export KEYWORDS_BANDS_BONJOVI="Bon(| )Jovi"

if [ "$1" == "" ];
then

  debug_start "Bon Jovi"

  BONJOVI=$(egrep -i "$KEYWORDS_BANDS_BONJOVI" "$NEWPAGES" | egrep -iv "Jon(| )Bon(| )Jovi")

  if [ "$BONJOVI" != "" ];
  then
    printf "%s" "$BONJOVI" > BonJovi.txt
    export CATFILE="BonJovi.txt"
    export CATNAME="Bon Jovi"
    $CATEGORIZE
    rm BonJovi.txt
    unset BONJOVI
  fi

  debug_end "Bon Jovi"

fi
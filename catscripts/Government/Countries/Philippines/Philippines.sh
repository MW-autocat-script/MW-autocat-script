#!/bin/bash

KEYWORDS_PHILIPPINES="Phil(|l)ip(|p)ine|Luzon"
KEYWORDS_PNPA="PNPA|Philippine(| )National(| )Police(| )Academy"
KEYWORDS_PHILIPPINES_EXCLUDE="$KEYWORDS_PNPA|Philippine(| )literature"

if [ "$1" == "" ];
then

  debug_start "Philippines"

  PHILIPPINES=$(egrep -i "$KEYWORDS_PHILIPPINES" newpages.txt | egrep -iv "$KEYWORDS_PHILIPPINES_EXCLUDE" )
  PNPA=$(egrep -i "$KEYWORDS_PNPA" newpages.txt)

  if [ "$PHILIPPINES" != "" ];
  then
    printf "%s" "$PHILIPPINES" > Philippines.txt
    export CATFILE="Philippines.txt"
    export CATNAME="Philippines"
    $CATEGORIZE
    rm Philippines.txt
    unset PHILIPPINES
  fi

  if [ "$PNPA" != "" ];
  then
    printf "%s" "$PNPA" > PNPA.txt
    export CATFILE="PNPA.txt"
    export CATNAME="PNPA"
    $CATEGORIZE
    rm PNPA.txt
    unset PNPA
  fi

  debug_end "Philippines"

fi
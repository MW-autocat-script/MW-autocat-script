#!/bin/bash

KEYWORDS_TOGO="\btogo"
KEYWORDS_TOGO_EXCLUDE="Jonathan(| )Togo"
KEYWORDS_TOGO_ALL="$KEYWORDS_TOGO"

if [ "$1" == "" ];
then
  
  debug_start "Togo"

  TOGO=$(egrep -i "$KEYWORDS_TOGO" "$NEWPAGES" | egrep -iv "$KEYWORDS_TOGO_EXCLUDE")

  if [ "$TOGO" != "" ];
  then
    printf "%s" "$TOGO" > Togo.txt
    export CATFILE="Togo.txt"
    export CATNAME="Togo"
    $CATEGORIZE
    rm Togo.txt
    unset TOGO
  fi

  debug_end "Togo"

fi
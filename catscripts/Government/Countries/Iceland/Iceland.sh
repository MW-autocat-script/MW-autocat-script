#!/bin/bash

KEYWORDS_ICELAND="\bIceland"
KEYWORDS_ICELAND_EXCLUDE="Icelandic"
KEYWORDS_ICELAND_ALL="$KEYWORDS_ICELAND"

if [ "$1" == "" ];
then
  
  debug_start "Iceland"

  ICELAND=$(egrep -i "$KEYWORDS_ICELAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_ICELAND_EXCLUDE")

  if [ "$ICELAND" != "" ];
  then
    printf "%s" "$ICELAND" > Iceland.txt
    export CATFILE="Iceland.txt"
    export CATNAME="Iceland"
    $CATEGORIZE
    rm Iceland.txt
    unset ICELAND
  fi

  debug_end "Iceland"

fi
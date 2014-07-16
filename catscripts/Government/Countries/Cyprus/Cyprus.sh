#!/bin/bash

KEYWORDS_CYPRUS="Cy(pr|rp)us"
KEYWORDS_CYPRUS_ALL="$KEYWORDS_CYPRUS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Cyprus"

  CYPRUS=$(egrep -i "$KEYWORDS_CYPRUS" newpages.txt)

  if [ "$CYPRUS" != "" ];
  then
    printf "%s" "$CYPRUS" > Cyrpus.txt
    export CATFILE="Cyprus.txt"
    export CATNAME="Cyprus"
    $CATEGORIZE
    rm Cyprus.txt
    unset CYPRUS
  fi

  debug_end "Cyprus"

fi
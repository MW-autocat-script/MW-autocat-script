#!/bin/bash

KEYWORDS_REDWALL="Redwall"

if [ "$1" == "" ];
then
  
  debug_start "Redwall"

  REDWALL=$(egrep -i "$KEYWORDS_REDWALL" "$NEWPAGES")

  if [ "$REDWALL" != "" ];
  then
    printf "%s" "$REDWALL" > Redwall.txt
    export CATFILE="Redwall.txt"
    export CATNAME="Redwall"
    $CATEGORIZE
    rm Redwall.txt
    unset REDWALL
  fi

  debug_end "Redwall"

fi
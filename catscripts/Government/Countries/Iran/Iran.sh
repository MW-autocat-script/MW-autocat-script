#!/bin/bash

KEYWORDS_IRAN="\bIran|Tehran"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Iran"

  IRAN=$(egrep -i "$KEYWORDS_IRAN" newpages.txt)

  if [ "$IRAN" != "" ];
  then
    printf "%s" "$IRAN" > Iran.txt
    export CATFILE="Iran.txt"
    export CATNAME="Iran"
    $CATEGORIZE
    rm Iran.txt
    unset IRAN
  fi

  debug_end "Iran"

fi
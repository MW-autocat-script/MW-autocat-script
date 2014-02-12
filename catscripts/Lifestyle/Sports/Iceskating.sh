#!/bin/bash

KEYWORDS_ICESKATING="(figure|ice)(| )skat(e|ing)"

if [ "$1" == "" ];
then
  
  debug_start "Ice skating"

  ICESKATING="$(egrep -i "$KEYWORDS_ICESKATING" newpages.txt)"

  if [ "$ICESKATING" != "" ];
  then
    printf "%s" "$ICESKATING" > IceSkating.txt
    unset ICESKATING
    export CATFILE="IceSkating.txt"
    export CATNAME="Ice skating"
    $CATEGORIZE
    rm IceSkating.txt
  fi

  debug_end "Ice skating"

fi
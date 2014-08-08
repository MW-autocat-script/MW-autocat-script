#!/bin/bash

KEYWORDS_BOTSWANA="Botswana"
KEYWORDS_BOTSWANA_ALL="$KEYWORDS_BOTSWANA"

if [ "$1" == "" ];
then
  
  debug_start "Botswana"

  BOTSWANA=$(egrep -i "$KEYWORDS_BOTSWANA" newpages.txt)

  if [ "$BOTSWANA" != "" ];
  then
    printf "%s" "$BOTSWANA" > Botswana.txt
    export CATFILE="Botswana.txt"
    export CATNAME="Botswana"
    $CATEGORIZE
    rm Botswana.txt
    unset BOTSWANA
  fi

  debug_end "Botswana"

fi
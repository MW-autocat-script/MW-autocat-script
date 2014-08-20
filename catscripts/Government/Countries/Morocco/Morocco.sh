#!/bin/bash

KEYWORDS_MOROCCO="Morocco|Moroccan"
KEYWORDS_MOROCCO_ALL="$KEYWORDS_MOROCCO"

if [ "$1" == "" ];
then
  
  debug_start "Morocco"

  MOROCCO="$(egrep -i "$KEYWORDS_MOROCCO" "$NEWPAGES")"

  if [ "$MOROCCO" != "" ];
  then
    printf "%s" "$MOROCCO" > Morocco.txt
    export CATFILE="Morocco.txt"
    export CATNAME="Morocco"
    $CATEGORIZE
    rm Morocco.txt
    unset MOROCCO
  fi

  debug_end "Morocco"

fi


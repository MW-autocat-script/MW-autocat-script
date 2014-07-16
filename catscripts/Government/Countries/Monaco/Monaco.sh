#!/bin/bash

KEYWORDS_MONACO="Monaco"
KEYWORDS_MONACO_EXCLUDE="Monaco(| )skin|Wikia"
KEYWORDS_MONACO_ALL="$KEYWORDS_MONACO"

if [ "$1" == "" ];
then
  
  debug_start "Monaco"

  MONACO=$(egrep -i "$KEYWORDS_MONACO" newpages.txt | egrep -iv "$KEYWORDS_MONACO_EXCLUDE")

  if [ "$MONACO" != "" ];
  then
    printf "%s" "$MONACO" > Monaco.txt
    export CATFILE="Monaco.txt"
    export CATNAME="Monaco"
    $CATEGORIZE
    rm Monaco.txt
    unset MONACO
  fi

  debug_end "Monaco"

fi
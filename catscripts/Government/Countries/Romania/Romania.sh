#!/bin/bash

KEYWORDS_ROMANIA="\bRomania"
KEYWORDS_ROMANIA_EXCLUDE="Romanian"
KEYWORDS_ROMANIA_ALL="$KEYWORDS_ROMANIA_ALL"

if [ "$1" == "" ];
then
  
  debug_start "Romania"

  ROMANIA=$(egrep -i "$KEYWORDS_ROMANIA" newpages.txt | egrep -iv "$KEYWORDS_ROMANIA_EXCLUDE")

  if [ "$ROMANIA" != "" ];
  then
    printf "%s" "$ROMANIA" > Romania.txt
    export CATFILE="Romania.txt"
    export CATNAME="Romania"
    $CATEGORIZE
    rm Romania.txt
    unset ROMANIA
  fi

  debug_end "Romania"

fi
#!/bin/bash

KEYWORDS_KENTUCKY="Kentucky"
KEYWORDS_KENTUCKY_EXCLUDE="Kentucky(| )Fried(| )Chicken"

if [ "$1" == "" ];
then

  debug_start "Kentucky"

  KENTUCKY=$(egrep -i "$KEYWORDS_KENTUCKY" newpages.txt | egrep -iv "$KEYWORDS_KENTUCKY_EXCLUDE")

  if [ "$KENTUCKY" != "" ];
  then
    printf "%s" "$KENTUCKY" > Kentucky.txt
    export CATFILE="Kentucky.txt"
    export CATNAME="Kentucky"
    $CATEGORIZE
    rm Kentucky.txt
    unset KENTUCKY
  fi

  debug_end "Kentucky"

fi
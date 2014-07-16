#!/bin/bash

KEYWORDS_NEWJERSEY="New(| )Jersey|,(| )NJ\b"

if [ "$1" == "" ];
then

  debug_start "New Jersey"

  NEWJERSEY=$(egrep -i "$KEYWORDS_NEWJERSEY" newpages.txt)

  if [ "$NEWJERSEY" != "" ];
  then
    printf "%s" "$NEWJERSEY" > NewJersey.txt
    export CATFILE="NewJersey.txt"
    export CATNAME="New Jersey"
    $CATEGORIZE
    rm NewJersey.txt
    unset NEWJERSEY
  fi

  debug_end "New Jersey"

fi
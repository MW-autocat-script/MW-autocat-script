#!/bin/bash

KEYWORDS_FANFICTION="Fan(| )fiction"

if [ "$1" == "" ];
then
  
  debug_start "Fan fiction"

  FANFIC=$(egrep -i "$KEYWORDS_FANFICTION" newpages.txt)

  if [ "$FANFIC" != "" ];
  then
    printf "%s" "$FANFIC" > Fanfiction.txt
    export CATFILE="Fanfiction.txt"
    export CATNAME="Fan fiction"
    $CATEGORIZE
    rm Fanfiction.txt
    unset FANFIC
  fi

  debug_end "Fan fiction"

fi
#!/bin/bash

KEYWORDS_ACTOR_BRUCELEE="Bruce(| )Lee"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Bruce Lee"

  BRUCELEE=$(egrep -i "$KEYWORDS_ACTOR_BRUCELEE" newpages.txt)

  if [ "$BRUCELEE" != "" ];
  then
    printf "%s" "$BRUCELEE" > BruceLee.txt
    export CATFILE="BruceLee.txt"
    export CATNAME="Bruce Lee"
    $CATEGORIZE
    rm BruceLee.txt
    unset BRUCELEE
  fi

  debug_end "Bruce Lee"

fi

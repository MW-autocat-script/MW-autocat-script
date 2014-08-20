#!/bin/bash

KEYWORDS_ACTOR_WILLSMITH="Will(|ard)(| )Smith"

if [ "$1" == "" ];
then

  debug_start "Will Smith"

  WILLSMITH=$(egrep -i "$KEYWORDS_ACTOR_WILLSMITH" "$NEWPAGES")

  if [ "$WILLSMITH" != "" ];
  then
    printf "%s" "$WILLSMITH" > WillSmith.txt
    export CATFILE="WillSmith.txt"
    export CATNAME="Will Smith"
    $CATEGORIZE
    rm WillSmith.txt
    unset WILLSMITH
  fi

  debug_end "Will Smith"

fi

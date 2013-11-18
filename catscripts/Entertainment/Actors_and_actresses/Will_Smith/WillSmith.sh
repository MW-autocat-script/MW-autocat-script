#!/bin/bash

KEYWORDS_ACTOR_WILLSMITH="Will(|ard)(| )Smith"

if [ "$1" == "" ];
then

  WILLSMITH=`egrep -i "$KEYWORDS_ACTOR_WILLSMITH" newpages.txt`

  if [ "$WILLSMITH" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_WILLSMITH" newpages.txt > WillSmith.txt
    export CATFILE="WillSmith.txt"
    export CATNAME="Will Smith"
    $CATEGORIZE
    rm WillSmith.txt
    unset WILLSMITH
  fi

fi

#!/bin/bash

export KEYWORDS_ACTOR_WILLSMITH="Will(|ard)(| )Smith"

egrep -i "$KEYWORDS_ACTOR_WILLSMITH" newpages.txt >> WillSmith.txt

WILLSMITH=`stat --print=%s WillSmith.txt`

if [ $WILLSMITH -ne 0 ];
then
  export CATFILE="WillSmith.txt"
  export CATNAME="Will Smith"
  $CATEGORIZE
fi

rm WillSmith.txt

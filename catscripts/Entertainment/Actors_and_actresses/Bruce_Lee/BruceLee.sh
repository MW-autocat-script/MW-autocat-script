#!/bin/bash

KEYWORDS_ACTOR_BRUCELEE="Bruce(| )Lee"

if [ "$1" == "" ]; #Normal operation
then

  BRUCELEE=`egrep -i "$KEYWORDS_ACTOR_BRUCELEE" newpages.txt`

  if [ "$BRUCELEE" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_BRUCELEE" newpages.txt > BruceLee.txt
    export CATFILE="BruceLee.txt"
    export CATNAME="Bruce Lee"
    $CATEGORIZE
    rm BruceLee.txt
    unset BRUCELEE
  fi
fi

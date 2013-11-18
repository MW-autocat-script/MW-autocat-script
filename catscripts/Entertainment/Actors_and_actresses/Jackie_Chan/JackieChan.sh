#!/bin/bash

KEYWORDS_ACTOR_JACKIECHAN="Jackie(| )Chan"

if [ "$1" == "" ]; #Normal operation
then

  JACKIECHAN=`egrep -i "$KEYWORDS_ACTOR_JACKIECHAN" newpages.txt`

  if [ $JACKIECHAN -ne 0 ];
  then
    egrep -i "$KEYWORDS_ACTOR_JACKIECHAN" newpages.txt > JackieChan.txt
    export CATFILE="JackieChan.txt"
    export CATNAME="Jackie Chan"
    $CATEGORIZE
    rm JackieChan.txt
    unset JACKIECHAN
  fi
fi
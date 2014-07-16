#!/bin/bash

KEYWORDS_ACTOR_JACKIECHAN="Jackie(| )Chan"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Jackie Chan"

  JACKIECHAN=$(egrep -i "$KEYWORDS_ACTOR_JACKIECHAN" newpages.txt)

  if [ "$JACKIECHAN" != "" ];
  then
    printf "%s" "$JACKIECHAN" > JackieChan.txt
    export CATFILE="JackieChan.txt"
    export CATNAME="Jackie Chan"
    $CATEGORIZE
    rm JackieChan.txt
    unset JACKIECHAN
  fi

  debug_end "Jackie Chan"

fi
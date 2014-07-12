#!/bin/bash

KEYWORDS_PLAYSTATION3="Play(| )Station(| )3|\bPS(| )3|Play(| )Station(| )Eye|Play(| )Station(| )Move"

if [ "$1" == "" ];
then

  debug_start "PlayStation 3"

  PS3=$(egrep -i "$KEYWORDS_PLAYSTATION3" newpages.txt)

  if [ "$PS3" != "" ];
  then
    printf "%s" "$PS3" > PlayStation3.txt
    export CATFILE="PlayStation3.txt"
    export CATNAME="PlayStation 3"
    $CATEGORIZE
    rm PlayStation3.txt
    unset PS3
  fi

  debug_end "PlayStation 3"

fi
#!/bin/bash

KEYWORDS_PS4="\bPS(| )(4|four)|Play(| )Station(| )(4|four)"

if [ "$1" == "" ];
then

  debug_start "PlayStation 4"

  PS4=$(egrep -i "$KEYWORDS_PS4" newpages.txt)

  if [ "$PS4" != "" ];
  then
    printf "%s" "$PS4" > PlayStation4.txt
    export CATFILE="PlayStation4.txt"
    export CATNAME="PlayStation 4"
    $CATEGORIZE
    rm PlayStation4.txt
    unset PS4
  fi

  debug_end "PLayStation 4"

fi
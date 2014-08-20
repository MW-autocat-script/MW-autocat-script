#!/bin/bash

KEYWORDS_STEPHENIEMEYER="Steph(e|a)nie(| )Meyer"

if [ "$1" == "" ];
then
  
  debug_start "Stephenie Meyer"

  MEYER=$(egrep -i "$KEYWORDS_STEPHENIEMEYER" "$NEWPAGES")

  if [ "$MEYER" != "" ];
  then
    printf "%s" "$MEYER" > Meyer.txt
    export CATFILE="Meyer.txt"
    export CATNAME="Stephenie Meyer"
    $CATEGORIZE
    rm Meyer.txt
    unset MEYER
  fi

  debug_end "Stephenie Meyer"

fi
#!/bin/bash

KEYWORDS_BLACKBEAUTY="Black(| )Beauty"

if [ "$1" == "" ];
then

  debug_start "Black Beauty"

  BLACKBEAUTY=$(egrep -i "$KEYWORDS_BLACKBEAUTY" "$NEWPAGES")

  if [ "$BLACKBEAUTY" != "" ];
  then
    printf "%s" "$BLACKBEAUTY" > BlackBeauty.txt
    export CATFILE="BlackBeauty.txt"
    export CATNAME="Black Beauty"
    $CATEGORIZE
    rm BlackBeauty.txt
    unset BLACKBEAUTY
  fi

  debug_end "Black Beauty"

fi
#!/bin/bash

KEYWORDS_HELLOKITTY="Hello(| )Kitty"
KEYWORDS_HELLOKITTY_ALL="$KEYWORDS_HELLOKITTY"

if [ "$1" == "" ];
then
  
  debug_start "Hello Kitty"

  HELLOKITTY=$(egrep -i "$KEYWORDS_HELLOKITTY" newpages.txt)

  if [ "$HELLOKITTY" != "" ];
  then
    printf "%s" "$HELLOKITTY" > HelloKitty.txt
    export CATFILE="HelloKitty.txt"
    export CATNAME="Hello Kitty"
    $CATEGORIZE
    rm HelloKitty.txt
    unset HELLOKITTY
  fi

  debug_end "Hello Kitty"

fi
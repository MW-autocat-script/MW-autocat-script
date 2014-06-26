#!/bin/bash

KEYWORDS_CLONEWARS="The(| )Clone(| )Wars"

if [ "$1" == "" ];
then

  debug_start "Star Wars: The Clone Wars"

  CLONEWARS=$(egrep -i "$KEYWORDS_CLONEWARS" newpages.txt)

  if [ "$CLONEWARS" != "" ];
  then
    printf "%s" "$CLONEWARS" > TheCloneWars.txt
    export CATFILE="TheCloneWars.txt"
    export CATNAME="Star Wars: The Clone Wars"
    $CATEGORIZE
    rm TheCloneWars.txt
    unset CLONEWARS
  fi

  debug_end "Star Wars: The Clone Wars"

fi
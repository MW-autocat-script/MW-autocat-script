#!/bin/bash

KEYWORDS_THE39CLUES="39(| )Clue"

if [ "$1" == "" ];
then
  
  debug_start "The 39 Clues"

  CLUES=$(egrep -i "$KEYWORDS_THE39CLUES" newpages.txt)

  if [ "$CLUES" != "" ];
  then
    printf "%s" "$CLUES" > The39Clues.txt
    export CATFILE="The39Clues.txt"
    export CATNAME="The 39 Clues"
    $CATEGORIZE
    rm The39Clues.txt
    unset CLUES
  fi

  debug_end "The 39 Clues"

fi
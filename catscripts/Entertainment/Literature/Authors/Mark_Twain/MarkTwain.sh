#!/bin/bash

KEYWORDS_MARKTWAIN="Mark(| )Twain|\bTwain(|s)\b|Sam(|uel)(| )(Langhorne|)(| )Clemens"

if [ "$1" == "" ];
then
  
  debug_start "Mark Twain"

  TWAIN=$(egrep -i "$KEYWORDS_MARKTWAIN" "$NEWPAGES")

  if [ "$TWAIN" != "" ];
  then
    printf "%s" "$TWAIN" > MarkTwain.txt
    export CATFILE="MarkTwain.txt"
    export CATNAME="Mark Twain"
    $CATEGORIZE
    rm MarkTwain.txt
    unset TWAIN
  fi

  debug_end "Mark Twain"

fi
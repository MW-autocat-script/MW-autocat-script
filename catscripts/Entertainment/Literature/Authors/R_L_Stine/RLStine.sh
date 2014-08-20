#!/bin/bash

KEYWORDS_RLSTINE="R(|\.)(| )L(|\.)(| )Stine|Robert(| )(|Lawrence)(| )Stine"

if [ "$1" == "" ];
then
  
  debug_start "R. L. Stine"

  STINE=$(egrep -i "$KEYWORDS_RLSTINE" "$NEWPAGES")

  if [ "$STINE" != "" ];
  then
    printf "%s" "$STINE" > RLStine.txt
    export CATFILE="RLStine.txt"
    export CATNAME="R. L. Stine"
    $CATEGORIZE
    rm RLStine.txt
    unset STINE
  fi

  debug_end "R. L. Stine"

fi
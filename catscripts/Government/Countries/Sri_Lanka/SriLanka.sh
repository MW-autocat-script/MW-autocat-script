#!/bin/bash

KEYWORDS_SRILANKA="Sri(| )Lanka|Ceylon"

if [ "$1" == "" ];
then
  
  debug_start "Sri Lanka"

  SRILANKA=$(egrep -i "$KEYWORDS_SRILANKA" newpages.txt)

  if [ "$SRILANKA" != "" ];
  then
    printf "%s" "$SRILANKA" > SriLanka.txt
    export CATFILE="SriLanka.txt"
    export CATNAME="Sri Lanka"
    $CATEGORIZE
    rm SriLanka.txt
    unset SRILANKA
  fi

  debug_end "Sri Lanka"

fi
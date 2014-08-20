#!/bin/bash

KEYWORDS_WIMPYDIARY="Diary(| )of(| )a(| )Wimpy(| )Kid"

if [ "$1" == "" ];
then
  
  debug_start "Diary of a Wimpy Kid"

  WIMPY=$(egrep -i "$KEYWORDS_WIMPYDIARY" "$NEWPAGES")

  if [ "$WIMPY" != "" ];
  then
    printf "%s" "$WIMPY" > WimpyKid.txt
    export CATFILE="WimpyKid.txt"
    export CATNAME="Diary of a Wimpy Kid"
    $CATEGORIZE
    rm WimpyKid.txt
    unset WIMPY
  fi

  debug_end "Diary of a Wimpy Kid"

fi
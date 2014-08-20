#!/bin/bash

KEYWORDS_WALES="Wales"
KEYWORDS_CARDIFF="Cardiff"
KEYWORDS_WALES_EXCLUDE="$KEYWORDS_CARDIFF|Jim(|bo|my)(| )Wales|New(| )South(| )Wales"
KEYWORDS_WALES_ALL="$KEYWORDS_WALES|$KEYWORDS_CARDIFF"

if [ "$1" == "" ];
then

  debug_start "Wales"

  WALES=$(egrep -i "$KEYWORDS_WALES" "$NEWPAGES" | egrep -iv "$KEYWORDS_WALES_EXCLUDE")
  CARDIFF=$(egrep -i "$KEYWORDS_CARDIFF" "$NEWPAGES")

  if [ "$WALES" != "" ];
  then
    printf "%s" "$WALES" > Wales.txt
    export CATFILE="Wales.txt"
    export CATNAME="Wales"
    $CATEGORIZE
    rm Wales.txt
    unset WALES
  fi

  if [ "$CARDIFF" != "" ];
  then
    printf "%s" "$CARDIFF" > Cardiff.txt
    export CATFILE="Cardiff.txt"
    export CATNAME="Cardiff"
    $CATEGORIZE
    rm Cardiff.txt
    unset CARDIFF
  fi

  debug_end "Wales"

fi
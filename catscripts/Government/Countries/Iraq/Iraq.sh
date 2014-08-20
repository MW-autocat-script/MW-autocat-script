#!/bin/bash

KEYWORDS_IRAQ="Iraq"
KEYWORDS_BAGHDAD="Baghdad"
KEYWORDS_IRAQ_EXCLUDE="$KEYWORDS_BAGHDAD"
KEYWORDS_IRAQ_ALL="$KEYWORDS_IRAQ|$KEYWORDS_BAGHDAD"

if [ "$1" == "" ];
then

  debug_start "Iraq"

  IRAQ="$(egrep -i "$KEYWORDS_IRAQ" "$NEWPAGES" | egrep -iv "$KEYWORDS_IRAQ_EXCLUDE")"
  BAGHDAD="$(egrep -i "$KEYWORDS_BAGHDAD" "$NEWPAGES")"

  if [ "$IRAQ" != "" ];
  then
    printf "%s" "$IRAQ" > Iraq.txt
    export CATFILE="Iraq.txt"
    export CATNAME="Iraq"
    $CATEGORIZE
    rm Iraq.txt
    unset IRAQ
  fi

  if [ "$BAGHDAD" != "" ];
  then
    printf "%s" "$BAGHDAD" > Baghdad.txt
    export CATFILE="Baghdad.txt"
    export CATNAME="Baghdad"
    $CATEGORIZE
    rm Baghdad.txt
    unset BAGHDAD
  fi

  debug_end "Iraq"

fi
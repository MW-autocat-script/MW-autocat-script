#!/bin/bash

KEYWORDS_SYDNEY="Sydney(,|)(| )Australia|Sydney Harbo(u|)r|Australia.+Sydney|Sydney.+Australia"
KEYWORDS_OPERAHOUSE="Sydney(| )Opera(| )House"
KEYWORDS_SYDNEY_EXCLUDE="$KEYWORDS_OPERAHOUSE"
KEYWORDS_SYDNEY_ALL="$KEYWORDS_SYDNEY|$KEYWORDS_OPERAHOUSE"

if [ "$1" == "" ];
then

  debug_start "Sydney, Australia"

  SYDNEY=$(egrep -i "$KEYWORDS_SYDNEY" newpages.txt | egrep -iv "$KEYWORDS_SYDNEY_EXCLUDE")
  OPERA=$(egrep -i "$KEYWORDS_OPERAHOUSE" newpages.txt)

  if [ "$SYDNEY" != "" ];
  then
    printf "%s" "$SYDNEY" > Sydney.txt
    export CATFILE="Sydney.txt"
    export CATNAME="Sydney, Australia"
    $CATEGORIZE
    rm Sydney.txt
    unset SYDNEY
  fi

  if [ "$OPERA" != "" ];
  then
    printf "%s" "$OPERA" > SydneyOperaHouse.txt
    export CATFILE="SydneyOperaHouse.txt"
    export CATNAME="Sydney Opera House"
    $CATEGORIZE
    rm SydneyOperaHouse.txt
    unset OPERA
  fi

  debug_end "Sydney, Australia"

fi
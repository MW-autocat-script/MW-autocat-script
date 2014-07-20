#!/bin/bash

KEYWORDS_PERIOD="\.$"
KEYWORDS_PERIOD_EXCLUDE="\b(j|s)r\.$|\bD\.C\.$"

if [ "$1" == "" ];
then
  
  debug_start "Page titles ending in a period"

  PERIOD="$(egrep -i "$KEYWORDS_PERIOD" newpages.txt | egrep -iv "$KEYWORDS_PERIOD_EXCLUDE")"

  if [ "$PERIOD" != "" ];
  then
    printf "%s" "$PERIOD" > Period.txt
    export CATFILE="Period.txt"
    export CATNAME="Page titles ending in a period"
    $CATEGORIZE
    rm Period.txt
    unset PERIOD
  fi

  debug_end "Page titles ending in a period"

fi
#!/bin/bash

KEYWORDS_TURKEY="(Republic|Country|government)(| )of(| )Turkey|\bin(| )Turkey$"
KEYWORDS_ISTANBUL="Istanbul"
KEYWORDS_TURKEY_EXCLUDE="$KEYWORDS_ISTANBUL"
KEYWORDS_TURKEY_ALL="$KEYWORDS_TURKEY|$KEYWORDS_ISTANBUL"

if [ "$1" == "" ];
then
  
  debug_start "Turkey"

  TURKEY="$(egrep -i "$KEYWORDS_TURKEY" "$NEWPAGES" | egrep -iv "$KEYWORDS_TURKEY_EXCLUDE")"
  ISTANBUL="$(egrep -i "$KEYWORDS_ISTANBUL" "$NEWPAGES")"

  if [ "$TURKEY" != "" ];
  then
    printf "%s" "$TURKEY" > Turkey.txt
    export CATFILE="Turkey.txt"
    export CATNAME="Turkey (country)"
    $CATEGORIZE
    rm Turkey.txt
    unset TURKEY
  fi

  if [ "$ISTANBUL" != "" ];
  then
    printf "%s" "$ISTANBUL" > Istanbul.txt
    export CATFILE="Istanbul.txt"
    export CATNAME="Istanbul"
    $CATEGORIZE
    rm Istanbul.txt
    unset ISTANBUL
  fi

  debug_end "Turkey"

fi
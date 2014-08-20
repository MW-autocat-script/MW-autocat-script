#!/bin/bash

KEYWORDS_ETHIOPIA="Ethiopia|Ghadafi|Abyssinia"
KEYWORDS_ETHIOPIA_ALL="$KEYWORDS_ETHIOPIA"

if [ "$1" == "" ];
then
  
  debug_start "Ethiopia"

  ETHIOPIA=$(egrep -i "$KEYWORDS_ETHIOPIA" "$NEWPAGES")

  if [ "$ETHIOPIA" != "" ];
  then
    printf "%s" "$ETHIOPIA" > Ethiopia.txt
    export CATFILE="Ethiopia.txt"
    export CATNAME="Ethiopia"
    $CATEGORIZE
    rm Ethiopia.txt
    unset ETHIOPIA
  fi

  debug_end "Ethiopia"

fi
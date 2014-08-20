#!/bin/bash

KEYWORDS_SERBIA="Serbia"
KEYWORDS_SERBIA_EXCLUDE="in(| )Serbian|Serbian(| )word"
KEYWORDS_SERBIA_ALL="$KEYWORDS_SERBIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Serbia"

  SERBIA=$(egrep -i "$KEYWORDS_SERBIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_SERBIA_EXCLUDE")

  if [ "$SERBIA" != "" ];
  then
    printf "%s" "$SERBIA" > Serbia.txt
    export CATFILE="Serbia.txt"
    export CATNAME="Serbia"
    $CATEGORIZE
    rm Serbia.txt
    unset SERBIA
  fi

  debug_end "Serbia"

fi
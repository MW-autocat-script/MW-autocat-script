#!/bin/bash

KEYWORDS_CROATIA="Croatia"
KEYWORDS_CROATIA_ALL="$KEYWORDS_CROATIA"

if [ "$1" == "" ];
then
  
  debug_start "Croatia"

  CROATIA=$(egrep -i "$KEYWORDS_CROATIA" newpages.txt)

  if [ "$CROATIA" != "" ];
  then
    printf "%s" "$CROATIA" > Croatia.txt
    export CATFILE="Croatia.txt"
    export CATNAME="Croatia"
    $CATEGORIZE
    rm Croatia.txt
    unset CROATIA
  fi

  debug_end "Croatia"

fi
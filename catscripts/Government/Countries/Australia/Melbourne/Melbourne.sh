#!/bin/bash

KEYWORDS_MELBOURNE="Melbourne"
KEYWORDS_MELBOURNE_EXCLUDE="Melbourne(|,) Fl"
KEYWORDS_MELBOURNE_ALL="$KEYWORDS_MELBOURNE"

if [ "$1" == "" ];
then
  
  debug_start "Melbourne, Australia"

  MELBOURNE=$(egrep -i "$KEYWORDS_MELBOURNE" "$NEWPAGES" | egrep -iv "$KEYWORDS_MELBOURNE_EXCLUDE")

  if [ "$MELBOURNE" != "" ];
  then
    printf "%s" "$MELBOURNE" > Melbourne.txt
    export CATFILE="Melbourne.txt"
    export CATNAME="Melbourne, Australia"
    $CATEGORIZE
    rm Melbourne.txt
    unset MELBOURNE
  fi

  debug_end "Melbourne, Australia"

fi
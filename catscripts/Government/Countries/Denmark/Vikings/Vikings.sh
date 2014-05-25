#!/bin/bash

export KEYWORDS_VIKINGS="Viking"
export KEYWORDS_VIKINGS_EXCLUDE="Minnesota(| )Vikings"

if [ "$1" == "" ];
then

  debug_start "Vikings"

  VIKINGS=$(egrep -i "$KEYWORDS_VIKINGS" newpages.txt | egrep -iv "$KEYWORDS_VIKINGS_EXCLUDE")

  if [ "$VIKINGS" != "" ];
  then
    printf "%s" "$VIKINGS" > Vikings.txt
    export CATFILE="Vikings.txt"
    export CATNAME="Vikings"
    $CATEGORIZE
    rm Vikings.txt
    unset VIKINGS
  fi

  debug_end "Vikings"

fi
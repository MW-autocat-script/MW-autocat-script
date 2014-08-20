#!/bin/bash

KEYWORDS_LEBANON="Lebanon"
KEYWORDS_LEBANON_EXCLUDE="New Jersey|\bNJ\b|bologna|baloney"
KEYWORDS_LEBANON_ALL="$KEYWORDS_LEBANON"

if [ "$1" == "" ];
then

  debug_start "Lebanon"

  LEBANON=$(egrep -i "$KEYWORDS_LEBANON" "$NEWPAGES" | egrep -iv "$KEYWORDS_LEBANON_EXCLUDE")

  if [ "$LEBANON" != "" ];
  then
    printf "%s" "$LEBANON" > Lebanon.txt
    export CATFILE="Lebanon.txt"
    export CATNAME="Lebanon"
    $CATEGORIZE
    rm Lebanon.txt
    unset LEBANON
  fi

  debug_end "Lebanon"

fi
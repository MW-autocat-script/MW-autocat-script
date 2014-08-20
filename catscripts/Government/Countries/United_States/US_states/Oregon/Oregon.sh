#!/bin/bash

KEYWORDS_OREGON="Oregon"
KEYWORDS_OREGON_EXCLUDE="Oregon(| )Trail"

if [ "$1" == "" ];
then

  debug_start "Oregon"

  OREGON=$(egrep -i "$KEYWORDS_OREGON" "$NEWPAGES" | egrep -iv "$KEYWORDS_OREGON_EXCLUDE")

  if [ "$OREGON" != "" ];
  then
    printf "%s" "$OREGON" > Oregon.txt
    export CATFILE="Oregon.txt"
    export CATNAME="Oregon"
    $CATEGORIZE
    rm Oregon.txt
    unset OREGON
  fi

  debug_end "Oregon"

fi
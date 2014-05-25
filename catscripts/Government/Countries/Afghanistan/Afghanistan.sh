#!/bin/bash

KEYWORDS_AFGHANISTAN="Afghani(|stan)"
KEYWORDS_AFGHANISTAN_EXCLUDE="Afghanistan War|war in Afghanistan"

if [ "$1" == "" ];
then

  debug_start "Afghanistan"

  AFGHANISTAN=$(egrep -i "$KEYWORDS_AFGHANISTAN" newpages.txt | egrep -iv "$KEYWORDS_AFGHANISTAN_EXCLUDE")

  if [ "$AFGHANISTAN" != "" ];
  then
    printf "%s" "$AFGHANISTAN" > Afghanistan.txt
    export CATFILE="Afghanistan.txt"
    export CATNAME="Afghanistan"
    $CATEGORIZE
    rm Afghanistan.txt
    unset AFGHANISTAN
  fi

  debug_end "Afghanistan"

fi
#!/bin/bash

KEYWORDS_TWITTER="Twitter"

if [ "$1" == "" ];
then

  debug_start "Twitter"

  TWITTER=$(egrep -i "$KEYWORDS_TWITTER" "$NEWPAGES")

  if [ "$TWITTER" != "" ];
  then
    printf "%s" "$TWITTER" > Twitter.txt
    export CATFILE="Twitter.txt"
    export CATNAME="Twitter"
    $CATEGORIZE
    rm Twitter.txt
    unset TWITTER
  fi

  debug_end "Twitter"

fi
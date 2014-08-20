#!/bin/bash

KEYWORDS_FACEBOOK="Face(| )book"

if [ "$1" == "" ];
then

  debug_start "Facebook"

  FACEBOOK=$(egrep -i "$KEYWORDS_FACEBOOK" "$NEWPAGES")

  if [ "$FACEBOOK" != "" ];
  then
    printf "%s" "$FACEBOOK" > Facebook.txt
    export CATFILE="Facebook.txt"
    export CATNAME="Facebook"
    $CATEGORIZE
    rm Facebook.txt
    unset FACEBOOK
  fi

  debug_end "Facebook"

fi
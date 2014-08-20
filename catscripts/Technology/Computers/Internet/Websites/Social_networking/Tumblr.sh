#!/bin/bash

KEYWORDS_TUMBLR="Tumblr"

if [ "$1" == "" ];
then
  
  debug_start "Tumblr"

  TUMBLR="$(egrep -i "$KEYWORDS_TUMBLR" "$NEWPAGES")"

  if [ "$TUMBLR" != "" ];
  then
    printf "%s" "$TUMBLR" > Tumblr.txt
    export CATFILE="Tumblr.txt"
    export CATNAME="Tumblr"
    $CATEGORIZE
    rm Tumblr.txt
    unset TUMBLR
  fi

  debug_end "Tumblr"

fi
#!/bin/bash

KEYWORDS_TUMBLR="Tumblr"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Tumblr\n"
  fi

  TUMBLR="$(egrep -i "$KEYWORDS_TUMBLR" newpages.txt)"

  if [ "$TUMBLR" != "" ];
  then
    printf "%s" "$TUMBLR" > Tumblr.txt
    export CATFILE="Tumblr.txt"
    export CATNAME="Tumblr"
    $CATEGORIZE
    rm Tumblr.txt
    unset TUMBLR
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Tumblr\n"
  fi

fi
#!/bin/bash

KEYWORDS_WEBKINZ="Web(| )kinz"
KEYWORDS_WEBKINZ_ALL="$KEYWORDS_WEBKINZ"

if [ "$1" == "" ];
then
  
  debug_start "Webkinz"

  WEBKINZ=$(egrep -i "$KEYWORDS_WEBKINZ" "$NEWPAGES")

  if [ "$WEBKINZ" != "" ];
  then
    printf "%s" "$WEBKINZ" > Webkinz.txt
    export CATFILE="Webkinz.txt"
    export CATNAME="Webkinz"
    $CATEGORIZE
    rm Webkinz.txt
    unset WEBKINZ
  fi

  debug_end "Webkinz"

fi
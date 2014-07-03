#!/bin/bash

KEYWORDS_N64="Nintendo(| )64|\bN64"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Nintendo 64"

  N64=$(egrep -i "$KEYWORDS_N64" newpages.txt)

  if [ "$N64" != "" ];
  then
    printf "%s" "$N64" > Nintendo64.txt
    export CATFILE="Nintendo64.txt"
    export CATNAME="Nintendo 64"
    $CATEGORIZE
    rm Nintendo64.txt
    unset N64
  fi

  debug_end "Nintendo 64"

fi
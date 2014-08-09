#!/bin/bash

KEYWORDS_SYRIA="\bSyria"
KEYWORDS_SYRIA_EXCLUDE="ham(|p)ster"
KEYWORDS_SYRIA_ALL="$KEYWORDS_SYRIA"

if [ "$1" == "" ];
then
  
  debug_start "Syria"

  SYRIA=$(egrep -i "$KEYWORDS_SYRIA" newpages.txt| egrep -i "$KEYWORDS_SYRIA_EXCLUDE")

  if [ "$SYRIA" != "" ];
  then
    printf "%s" "$SYRIA" > Syria.txt
    export CATFILE="Syria.txt"
    export CATNAME="Syria"
    $CATEGORIZE
    rm Syria.txt
    unset SYRIA
  fi

  debug_end "Syria"

fi
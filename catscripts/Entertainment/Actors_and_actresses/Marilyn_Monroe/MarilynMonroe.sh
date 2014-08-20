#!/bin/bash

KEYWORDS_ACTRESS_MARILYNMONROE="Marilyn(| )Monroe"

if [ "$1" == "" ];
then

  debug_start "Marilyn Monroe"

  MARILYNMONROE=$(egrep -i "$KEYWORDS_ACTRESS_MARILYNMONROE" "$NEWPAGES")

  if [ "$MARILYNMONROE" != "" ];
  then
    printf "%s" "$MARILYNMONROE" > MarilynMonroe.txt
    export CATFILE="MarilynMonroe.txt"
    export CATNAME="Marilyn Monroe"
    $CATEGORIZE
    rm MarilynMonroe.txt
    unset MARILYNMONROE
  fi

  debug_end "Marilyn Monroe"

fi
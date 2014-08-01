#!/bin/bash

KEYWORDS_TELEVISIONSERIES_ICARLY="iCarly"

if [ "$1" == "" ];
then 

  debug_start "iCarly"

  ICARLY=$(egrep -i "$KEYWORDS_TELEVISIONSERIES_ICARLY" newpages.txt)

  if [ "$ICARLY" != "" ];
  then
    printf "%s" "$ICARLY" > iCarly.txt
    export CATFILE="iCarly.txt"
    export CATNAME="iCarly"
    $CATEGORIZE
    rm iCarly.txt
    unset ICARLY
  fi

  debug_end "iCarly"

fi
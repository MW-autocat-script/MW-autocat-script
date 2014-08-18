#!/bin/bash

KEYWORDS_SAINTKITTS="(Saint|St(|\.))(| )Kitts"
KEYWORDS_SAINTKITTS_ALL="$KEYWORDS_SAINTKITTS"

if [ "$1" == "" ];
then

  debug_start "Saint Kitts and Nevis"

  SAINTKITTS=$(egrep -i "$KEYWORDS_SAINTKITTS" newpages.txt)

  if [ "$SAINTKITTS" != "" ];
  then
    printf "%s" "$SAINTKITTS" > SaintKitts.txt
    export CATFILE="SaintKitts.txt"
    export CATNAME="Saint Kitts and Nevis"
    $CATEGORIZE
    rm "$CATNAME"
    unset SAINTKITTS
  fi

  debug_end "Saint Kitts and Nevis"

fi
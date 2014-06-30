#!/bin/bash

KEYWORDS_LINKINPARK="Linkin('|)(| )Park"

if [ "$1" == "" ];
then

  debug_start "Linkin' Park"

  LINKIN=$(egrep -i "$KEYWORDS_LINKINPARK" newpages.txt)

  if [ "$LINKIN" != "" ];
  then
    printf "%s" "$LINKIN" > LinkinPark.txt
    export CATFILE="LinkinPark.txt"
    export CATNAME="Linkin Park"
    $CATEGORIZE
    rm LinkinPark.txt
    unset LINKIN
  fi

  debug_end "Linkin' Park"

fi
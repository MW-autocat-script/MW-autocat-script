#!/bin/bash

KEYWORDS_NORTHERNIRELAND="Northern(| )Ireland"
KEYWORDS_BELFAST="Belfast"
KEYWORDS_NORTHERNIRELAND_EXCLUDE="$KEYWORDS_BELFAST"
KEYWORDS_NORTHERNIRELAND_ALL="$KEYWORDS_NORTHERNIRELAND|$KEYWORDS_BELFAST"

if [ "$1" == "" ];
then

  debug_start "Northern Ireland"

  NIRELAND=$(egrep -i "$KEYWORDS_NORTHERNIRELAND" newpages.txt | egrep -iv "$KEYWORDS_NORTHERNIRELAND_EXCLUDE")
  BELFAST=$(egrep -i "$KEYWORDS_BELFAST" newpages.txt)

  if [ "$NIRELAND" != "" ];
  then
    printf "%s" "$NIRELAND" > NorthernIreland.txt
    export CATFILE="NorthernIreland.txt"
    export CATNAME="Northern Ireland"
    $CATEGORIZE
    rm NorthernIreland.txt
    unset NIRELAND
  fi

  if [ "$BELFAST" != "" ];
  then
    printf "%s" "$BELFAST" > Belfast.txt
    export CATFILE="Belfast.txt"
    export CATNAME="Belfast"
    $CATEGORIZE
    rm Belfast.txt
    unset BELFAST
  fi

  debug_end "Northern Ireland"

fi
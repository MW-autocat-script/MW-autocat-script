#!/bin/bash

KEYWORDS_NORTHDAKOTA="North(| )Dakota"

if [ "$1" == "" ];
then

  debug_start "North Dakota"

  NORTHDAKOTA=$(egrep -i "$KEYWORDS_NORTHDAKOTA" "$NEWPAGES")

  if [ "$NORTHDAKOTA" != "" ];
  then
    printf "%s" "$NORTHDAKOTA" > NorthDakota.txt
    export CATFILE="NorthDakota.txt"
    export CATNAME="North Dakota"
    $CATEGORIZE
    rm NorthDakota.txt
    unset NORTHDAKOTA
  fi

  debug_end "North Dakota"

fi
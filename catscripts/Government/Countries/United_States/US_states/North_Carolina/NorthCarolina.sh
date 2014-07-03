#!/bin/bash

KEYWORDS_NORTHCAROLINA="North(| )Carolina|, N(|\.)C(|\.)\b"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "North Carolina"

  NORTHCAROLINA=$(egrep -i "$KEYWORDS_NORTHCAROLINA" newpages.txt)

  if [ "$NORTHCAROLINA" != "" ];
  then
    printf "%s" "$NORTHCAROLINA" > NorthCarolina.txt
    export CATFILE="NorthCarolina.txt"
    export CATNAME="North Carolina"
    $CATEGORIZE
    rm NorthCarolina.txt
    unset NORTHCAROLINA
  fi

  debug_end "North Carolina"

fi
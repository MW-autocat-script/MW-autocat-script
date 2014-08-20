#!/bin/bash

KEYWORDS_LITERACYPLANET="Lit(|e|u)r(|a)cy(| )Planet|Intr(i|e)p(r|)ica|Turtle(| )Knock|Sheep(| )Bounce"

if [ "$1" == "" ];
then

  debug_start "Literacy Planet"

  LITERACYPLANET=$(egrep -i "$KEYWORDS_LITERACYPLANET" "$NEWPAGES") 

  if [ "$LITERACYPLANET" != "" ];
  then
    printf "%s" "$LITERACYPLANET" > LiteracyPlanet.txt
    export CATFILE="LiteracyPlanet.txt"
    export CATNAME="Literacy Planet"
    $CATEGORIZE
    rm LiteracyPlanet.txt
    unset LITERACYPLANET
  fi

  debug_end "Literacy Planet"

fi
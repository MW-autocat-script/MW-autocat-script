#!/bin/bash

export KEYWORDS_MOVIES_JURASSIC_PARK="Jur(|r)as(|s)ic(| )Park"

if [ "$1" == "" ];
then

  debug_start "Jurassic Park"

  JURASSICPARK=$(egrep -i "$KEYWORDS_MOVIES_JURASSIC_PARK" "$NEWPAGES")

  if [ "$JURASSICPARK" != "" ];
  then
    printf "%s" "$JURASSICPARK" > JurassicPark.txt
    export CATFILE="JurassicPark.txt"
    export CATNAME="Jurassic Park"
    $CATEGORIZE
    rm JurassicPark.txt
    unset JURASSICPARK
  fi

  debug_end "Jurassic Park"

fi
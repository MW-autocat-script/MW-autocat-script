#!/bin/bash

export KEYWORDS_MOVIES_JURASSIC_PARK="Jur(|r)as(|s)ic(| )Park"

if [ "$1" == "" ];
then

  debug_start "Jurassic Park"

  JURASSICPARK=$(egrep -i "$KEYWORDS_MOVIES_JURASSIC_PARK" "$NEWPAGES")

  categorize "JURASSICPARK" "Jurassic Park"

  debug_end "Jurassic Park"

fi
#!/bin/bash

KEYWORDS_ARIZONA="Arizona|,(| )AZ( |$)"
KEYWORDS_ARIZONA_ALL="$KEYWORDS_ARIZONA"

if [ "$1" == "" ];
then

  debug_start "Arizona"

  ARIZONA=$(egrep -i "$KEYWORDS_ARIZONA" "$NEWPAGES")

  categorize "ARIZONA" "Arizona"

  debug_end "Arizona"

fi
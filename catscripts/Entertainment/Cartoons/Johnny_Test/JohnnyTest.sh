#!/bin/bash

KEYWORDS_JOHNNYTEST="Johnny(| )Test"

if [ "$1" == "" ];
then

  debug_start "Johnny Test"

  JOHNNYTEST=$(egrep -i "$KEYWORDS_JOHNNYTEST" "$NEWPAGES")

  categorize "JOHNNYTEST" "Johnny Test"

  debug_end "Johnny Test"

fi
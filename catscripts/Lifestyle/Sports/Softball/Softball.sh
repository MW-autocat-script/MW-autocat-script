#!/bin/bash

KEYWORDS_SOFTBALL="softball"

if [ "$1" == "" ];
then

  debug_start "Softball"

  SOFTBALL=$(egrep -i "$KEYWORDS_SOFTBALL" "$NEWPAGES")

  categorize "SOFTBALL" "Softball"

  debug_end "Softball"

fi
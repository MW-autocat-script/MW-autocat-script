#!/bin/bash

KEYWORDS_INVENTIONS="Who invented [a-z]{1,}$|Who invented the [a-z]{1,}|(When|Where) was the .+ invented"

if [ "$1" == "" ];
then

  debug_start "Inventions"

  INVENTIONS=$(egrep -i "$KEYWORDS_INVENTIONS" "$NEWPAGES")

  categorize "INVENTIONS" "Inventions"

  debug_end "Inventions"

fi

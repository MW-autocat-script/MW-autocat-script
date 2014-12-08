#!/bin/bash

KEYWORDS_APOLLO13="Apollo(| )(13|XIII)"
KEYWORDS_APOLLO13_ALL="$KEYWORDS_APOLLO13"

if [ "$1" == "" ];
then

  debug_start "Apollo 13"

  APOLLO13=$(egrep -i "$KEYWORDS_APOLLO13" "$NEWPAGES")

  categorize "APOLLO13" "Apollo 13"

  debug_end "Apollo 13"

fi
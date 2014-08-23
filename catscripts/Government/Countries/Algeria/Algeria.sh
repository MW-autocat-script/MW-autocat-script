#!/bin/bash

KEYWORDS_ALGERIA="Algeria"

if [ "$1" == "" ];
then

  debug_start "Algeria"

  ALGERIA=$(egrep -i "$KEYWORDS_ALGERIA" "$NEWPAGES")

  categorize "ALGERIA" "Algeria"

  debug_end "Algeria"

fi
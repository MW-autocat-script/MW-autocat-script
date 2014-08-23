#!/bin/bash

KEYWORDS_ALBANIA="Albania"

if [ "$1" == "" ];
then

  debug_start "Albania"

  ALBANIA=$(egrep -i "$KEYWORDS_ALBANIA" "$NEWPAGES")

  categorize "ALBANIA" "Albania"

  debug_end "Albania"

fi
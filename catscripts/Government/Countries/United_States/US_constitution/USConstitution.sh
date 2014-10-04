#!/bin/bash

KEYWORDS_USCONSTITUTION="(U(|\.)S(|\.)|United(| )States)(| )Constitution"
KEYWORDS_USCONSTITUTION_ALL="$KEYWORDS_USCONSTITUTION_ALL"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "US constitution"

  CONSTITUTION=$(egrep -i "$KEYWORDS_USCONSTITUTION" "$NEWPAGES")

  categorize "CONSTITUTION" "US constitution"

  debug_end "US constitution"

fi
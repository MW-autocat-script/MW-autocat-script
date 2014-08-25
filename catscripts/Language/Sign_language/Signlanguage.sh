#!/bin/bash

KEYWORDS_SIGNLANGUAGE="Sign(| )language"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sign language"

  SIGN=$(egrep -i "$KEYWORDS_SIGNLANGUAGE" "$NEWPAGES")

  categorize "SIGN" "Sign language"

  debug_end "Sign language"

fi
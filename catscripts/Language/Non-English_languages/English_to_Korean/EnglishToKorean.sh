#!/bin/bash

KEYWORDS_ENGLISHTOKOREAN="How(| )(to|do(| )you)(| )(say|spell).+ in(| )Korean|What(| )is(| )the(| )Korean(| )word(| )for"

if [ "$1" == "" ]; #Normal operation
then

  KOREAN=$(egrep -i "$KEYWORDS_ENGLISHTOKOREAN" "$NEWPAGES")

  debug_start "English to Korean"

  categorize "KOREAN" "English to Korean"

  debug_end "English to Korean"

fi


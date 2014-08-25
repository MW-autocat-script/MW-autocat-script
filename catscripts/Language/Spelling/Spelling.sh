#!/bin/bash

KEYWORDS_SPELLING="How(| )(to|do you)(| )spell(| )(|\"|')[a-z]{1,}(|\"|')$|correct(| )spelling"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Spelling"

  SPELLING=$(egrep -i "$KEYWORDS_SPELLING" "$NEWPAGES")

  categorize "SPELLING" "Spelling"

  debug_end "Spelling"

fi
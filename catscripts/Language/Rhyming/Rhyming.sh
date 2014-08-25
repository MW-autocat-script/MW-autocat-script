#!/bin/bash

KEYWORDS_RHYMING="rhyme|rhyming"
KEYWORDS_RHYMING_EXCLUDE="nursery(| )rhyme"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Rhyming"

  RHYMES=$(egrep -i "$KEYWORDS_RHYMING" "$NEWPAGES" | egrep -iv "$KEYWORDS_RHYMING_EXCLUDE")

  categorize "RHYMES" "Rhyming"

  debug_end "Rhyming"

fi

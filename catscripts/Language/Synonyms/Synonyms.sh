#!/bin/bash

KEYWORDS_SYNONYMS="synonym|another word for"

if [ "$1" == "" ]; #Normal operation
then

  SYNONYMS=$(egrep -i "$KEYWORDS_SYNONYMS" "$NEWPAGES")

  debug_start "Synonyms"

  categorize "SYNONYMS" "Synonyms"

  debug_end "Synonyms"

fi

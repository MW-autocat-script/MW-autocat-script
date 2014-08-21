#!/bin/bash

KEYWORDS_DEFINITIONS="^What is [a-z]{1,}(| )(|[a-z]{1,})$|^What is a [a-z]{1,}(| )(|[a-z]{1,})$|^What is an [a-z]{1,}(| )(|[a-z]{1,})$|^What(|')s a [a-z]{1,}(| )(|[a-z]{1,})$|^What(|'s) an [a-z]{1,}(| )(|[a-z]{1,})$|^What does [a-z]{1,}(| )(|[a-z]{1,})(| )mean$|^What does the word [a-z]{1,}(| )(|[a-z]{1,})(| )mean$|What is the meaning of (|'|\")[a-z]{1,}(|'|\")$"
KEYWORDS_NAMES="^What does the (sur|)name (|\"|')[a-z]{1,}(|\"|') mean|What is the meaning of the (sur|)name (|'|\")[a-z]{1,}(|'|\")"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Definitions"

  DEFINITIONS=$(egrep -i "$KEYWORDS_DEFINITIONS" "$NEWPAGES")
  NAMEMEANINGS=$(egrep -i "$KEYWORDS_NAMES" "$NEWPAGES")

  categorize "DEFINITIONS" "Definitions"
  categorize "NAMEMEANINGS" "Name meanings"

  debug_end "Definitions"

fi
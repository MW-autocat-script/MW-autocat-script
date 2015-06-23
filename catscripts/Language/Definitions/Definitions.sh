#!/bin/bash

KEYWORDS_WHATIS="^What(| )('|i)s(| )a(|n) [a-z]{1,}$|^What(| )('|i)s(| )[a-z]{1,}$|^What(| )('|i)s(| )a(|n) [a-z]{1,} [a-z]{1,}$|^What(| )('|i)s(| )[a-z]{1,}(| )[a-z]{1,}$"
KEYWORDS_WHATDOES="^What(| )does(| )(|the(| )word)(| )[a-z]{1,} mean$|^What(| )does(| )(|the(| )word)(| )[a-z]{1,} [a-z]{1,}(| )mean$"
KEYWORDS_WHATARE="^What(| )are(| )[a-z]{1,}$|^What(| )are(| )[a-z]{1,} [a-z]{1,}$"
KEYWORDS_MEANING="^What(| )is(| )the(| )meaning(| )of(| )(|the(| )word)(| )[a-z]{1,}$|^What(| )is(| )the(| )meaning(| )of(| )(|the(| )word)(| )[a-z]{1,} [a-z]{1,}$"
KEYWORDS_DEFINITIONS="$KEYWORDS_WHATIS|$KEYWORDS_WHATDOES|$KEYWORDS_WHATARE|$KEYWORDS_MEANING"
KEYWORDS_DEFINITIONS_EXCLUDE="^What(| )is(| )in(| )[a-z]{1,}$"
KEYWORDS_NAMES="^What does the (sur|)name (|\"|')[a-z]{1,}(|\"|') mean|What is the meaning of the (sur|)name (|'|\")[a-z]{1,}(|'|\")"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Definitions"

  DEFINITIONS=$(egrep -i "$KEYWORDS_DEFINITIONS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DEFINITIONS_EXCLUDE")
  NAMEMEANINGS=$(egrep -i "$KEYWORDS_NAMES" "$NEWPAGES")

  categorize "DEFINITIONS" "Definitions"
  categorize "NAMEMEANINGS" "Name meanings"

  debug_end "Definitions"

fi
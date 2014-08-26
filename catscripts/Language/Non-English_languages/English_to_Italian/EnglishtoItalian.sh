#!/bin/bash

KEYWORDS_ENGLISHTOITALIAN="How(| )(do(| )you|to)(| )(say|spell).+in(| )Italian|What((|')s|(| )is)(| )the(| )Italian(| )word(| )for|[abcdefghijklmopqrstuvwxyz]{1,}(| )in(| )Italian"

if [ "$1" == "" ];
then

  debug_start "English to Italian"

  ENGLISHTOITALIAN=$(egrep -i "$KEYWORDS_ENGLISHTOITALIAN" "$NEWPAGES")

  categorize "ENGLISHTOITALIAN" "English to Italian"

  debug_end "English to Italian"

fi

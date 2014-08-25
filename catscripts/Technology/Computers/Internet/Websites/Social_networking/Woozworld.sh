#!/bin/bash

KEYWORDS_WOOZWORLD="Wooz(| )world"

if [ "$1" == "" ];
then

  debug_start "Woozworld"

  WOOZWORLD=$(egrep -i "$KEYWORDS_WOOZWORLD" "$NEWPAGES")

  categorize "WOOZWORLD" "Woozworld"

  debug_end "Woozworld"

fi

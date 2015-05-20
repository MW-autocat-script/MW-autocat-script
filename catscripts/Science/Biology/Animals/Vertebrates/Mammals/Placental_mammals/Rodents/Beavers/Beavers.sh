#!/bin/bash

KEYWORDS_BEAVERS="Beaver|(Castor|C\.)(| )(fiber|canadensis|californicus)"
KEYWORDS_BEAVERS_EXCLUDE="leave(| )it(| )to(| )beaver|dustbin(| )beaver"
KEYWORDS_BEAVERS_ALL="$KEYWORDS_BEAVERS"

if [ "$1" == "" ];
then
  
  debug_start "Beavers"

  BEAVERS=$(egrep -i "$KEYWORDS_BEAVERS" "$NEWPAGES" | egrep -iv "$KEYWORDS_BEAVERS_EXCLUDE")

  categorize "BEAVERS" "Beavers"

  debug_end "Beavers"

fi
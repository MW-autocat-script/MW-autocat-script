#!/bin/bash

KEYWORDS_DORA="Dora(| )the(| )Explorer"

if [ "$1" == "" ];
then

  debug_start "Dora the Explorer"

  DORA=$(egrep -i "$KEYWORDS_DORA" "$NEWPAGES")

  categorize "DORA" "Dora the Explorer"

  debug_end "Dora the Explorer"

fi

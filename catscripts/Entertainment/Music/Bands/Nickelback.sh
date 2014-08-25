#!/bin/bash

KEYWORDS_NICKELBACK="Nick(el|le)back"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Nickelback"

  NICKELBACK=$(egrep -i "$KEYWORDS_NICKELBACK" "$NEWPAGES")

  categorize "NICKELBACK" "Nickelback"

  debug_end "Nickelback"

fi
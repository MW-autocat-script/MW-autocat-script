#!/bin/bash

KEYWORDS_XATU="Xatu"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon X scripts"

  XATU=$(egrep -i "$KEYWORDS_XATU" "$NEWPAGES")

  categorize "XATU" "Xatu"

  debug_end "Pokemon X scripts"

fi